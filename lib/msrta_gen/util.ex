defmodule MsrtaGen.Util do
  alias MsrtaGen.Definitions
  import Logger

  def gen_seed(length \\ 16) do
    characters = for _x <- 1..length do
      Enum.random(0..9)
    end

    characters |> Integer.undigits
  end

  def gen_plateau(seed) do
    :rand.seed(:exs1024, {String.to_integer(seed), 0, 0})
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

    # Inits all shrines
    shrines = Definitions.shrines

    # Removes shrines that are not selected
    shrines = cond do
      Enum.member?(params.other_opts, "camera") -> shrines
      true ->
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

    shrines = cond do
      Enum.member?(params.other_opts, "labyrinths") -> shrines
      true ->
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

    shrines = cond do
      Enum.member?(params.other_opts, "springs") -> shrines
      true ->
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

    shrines = cond do
      Enum.member?(params.other_opts, "twin_memories") -> shrines
      true ->
        # Shee Vaneer
        index = Enum.find_index(shrines, fn(s) -> s.id == 23 end)
        shrines = List.delete_at(shrines, index)

        # Shee Venath
        index = Enum.find_index(shrines, fn(s) -> s.id == 24 end)
        List.delete_at(shrines, index)
    end

    shrines = cond do
      Enum.member?(params.other_opts, "shrouded") -> shrines
      true ->
        # Shrouded Shrine
        index = Enum.find_index(shrines, fn(s) -> s.id == 111 end)
        List.delete_at(shrines, index)
    end

    shrines = cond do
      Enum.member?(params.other_opts, "eventide") -> shrines
      true ->
        # Stranded on Eventide
        index = Enum.find_index(shrines, fn(s) -> s.id == 36 end)
        List.delete_at(shrines, index)
    end

    shrines = cond do
      Enum.member?(params.other_opts, "thunder") -> shrines
      true ->
        # Trial of Thunder
        index = Enum.find_index(shrines, fn(s) -> s.id == 85 end)
        List.delete_at(shrines, index)
    end

    shrines = cond do
      Enum.member?(params.other_opts, "bloody_moon") -> shrines
      true ->
        # Under a Red Moon
        index = Enum.find_index(shrines, fn(s) -> s.id == 83 end)
        List.delete_at(shrines, index)
    end

    # Clears shrines from regions, tests of strength, and blessings
    shrines = for shrine <- shrines do
      region = Enum.member?(params.regions, shrine.region)
      tos = Enum.member?(params.tests_of_strength, shrine.tos)
      blessing = if shrine.blessing do
        case params.blessings do
          "quests" ->
            cond do
              shrine.quest == nil -> shrine
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
