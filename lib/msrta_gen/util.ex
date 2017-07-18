defmodule MsrtaGen.Util do
  alias MsrtaGen.Definitions

  def gen_seed(length \\ 16) do
    characters = for _x <- 1..length do
      Enum.random(0..9)
    end

    characters |> Integer.undigits
  end

  def gen_plateau(seed) do
    :rand.seed(:exs1024, {seed, 0, 0})
    Definitions.plateau |> Enum.shuffle
  end

  def gen_pool(params) do
    # Adds Divine Beasts (x4 chance of pulling)
    beasts = case params.beasts do
      nil -> []
      beasts ->
        for beast <- beasts do
          case beast do
            "medoh" ->
              b = Enum.at Definitions.beasts, 0
              [b, b, b, b]
            "naboris" ->
              b = Enum.at Definitions.beasts, 1
              [b, b, b, b]
            "rudania" ->
              b = Enum.at Definitions.beasts, 2
              [b, b, b, b]
            "ruta" ->
              b = Enum.at Definitions.beasts, 3
              [b, b, b, b]
          end
        end |> List.flatten
    end

    # Inits shrine and all optional options
    shrines = Definitions.shrines
    opts = ["camera", "labyrinths", "springs", "twin_memories", "shrouded", "eventide", "thunder", "bloody_moon"]

    # Clears shrines that are not selected
    shrines = for opt <- opts do
      unless Enum.member?(params.other_opts, opt) do
        shrines = if opt == "camera" do
          # Stolen Heirloom
          index = Enum.find_index(shrines, fn(s) -> s.id == 17 end)
          shrines = List.delete_at(shrines, index)

          # Fragmented Monument
          index = Enum.find_index(shrines, fn(s) -> s.id == 39 end)
          shrines = List.delete_at(shrines, index)

          # Guardian Slideshow
          index = Enum.find_index(shrines, fn(s) -> s.id == 70 end)
          List.delete_at(shrines, index)
        end

        shrines = if opt == "labyrinths" do
          # Akkala Labyrinth
          index = Enum.find_index(shrines, fn(s) -> s.id == 5 end)
          shrines = List.delete_at(shrines, index)

          # Hebra Labyrinth
          index = Enum.find_index(shrines, fn(s) -> s.id == 63 end)
          shrines = List.delete_at(shrines, index)

          # Wasteland Labyrinth
          index = Enum.find_index(shrines, fn(s) -> s.id == 97 end)
          List.delete_at(shrines, index)
        end

        shrines = if opt == "springs" do
          # Spring of Power
          index = Enum.find_index(shrines, fn(s) -> s.id == 0 end)
          shrines = List.delete_at(shrines, index)

          # Spring of Wisdon
          index = Enum.find_index(shrines, fn(s) -> s.id == 51 end)
          shrines = List.delete_at(shrines, index)

          # Spring of Courage
          index = Enum.find_index(shrines, fn(s) -> s.id == 73 end)
          List.delete_at(shrines, index)
        end

        shrines = if opt == "twin_memories" do
          # Shee Vaneer
          index = Enum.find_index(shrines, fn(s) -> s.id == 23 end)
          shrines = List.delete_at(shrines, index)

          # Shee Venath
          index = Enum.find_index(shrines, fn(s) -> s.id == 24 end)
          List.delete_at(shrines, index)
        end

        shrines = if opt == "shrouded" do
          # Shrouded Shrine
          index = Enum.find_index(shrines, fn(s) -> s.id == 111 end)
          List.delete_at(shrines, index)
        end

        shrines = if opt == "eventide" do
          # Stranded on Eventide
          index = Enum.find_index(shrines, fn(s) -> s.id == 36 end)
          List.delete_at(shrines, index)
        end

        shrines = if opt == "eventide" do
          # Stranded on Eventide
          index = Enum.find_index(shrines, fn(s) -> s.id == 36 end)
          List.delete_at(shrines, index)
        end

        shrines = if opt == "thunder" do
          # Trial of Thunder
          index = Enum.find_index(shrines, fn(s) -> s.id == 85 end)
          List.delete_at(shrines, index)
        end

        shrines = if opt == "bloody_moon" do
          # Under a Red Moon
          index = Enum.find_index(shrines, fn(s) -> s.id == 83 end)
          List.delete_at(shrines, index)
        end

        shrines
      end
    end |> List.last

    # Clears shrines from regions, tests of strength, and blessings
    shrines = for shrine <- shrines do
      region = Enum.member?(params.regions, shrine.region)
      tos = Enum.member?(params.tests_of_strength, shrine.tos)
      blessing = if shrine.blessing do
        case params.blessings do
          "quests" ->
            cond do
              shrine.quest.forced -> shrine
              true -> false
            end
          "all"  -> shrine
          "none" -> false
        end
      end

      cond do
        Enum.member?([region, tos, blessing], false) -> nil
        true -> shrine
      end
    end

    beasts ++ shrines
  end

  def gen_run(params) do
    total_orbs = 36
    params = for {k, v} <- params, into: %{}, do: {String.to_atom(k), v}
    :rand.seed(:exs1024, {String.to_integer(params.seed), 0, 0})

    plateau = case params.plat_shuffle do
      true -> gen_plateau(params.seed)
      false -> nil
    end

    IO.inspect plateau

    shrine_pool = gen_pool(params)

    IO.inspect shrine_pool
  end
end
