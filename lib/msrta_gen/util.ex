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
    beasts = cond do
      Map.has_key?(params, :beasts) == false -> []
      true ->
        for beast <- params.beasts do
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

    # Remove shrines that are required by divine beasts but are not selected
    shrines = cond do
      Map.has_key?(params, :beasts) == false ->
        # Recital at Warbler's Nest
        index = Enum.find_index(shrines, fn(s) -> s.id == 93 end)
        List.delete_at(shrines, index)
      true -> cond do
        Enum.member?(params.beasts, "medoh") -> shrines
        true ->
          # Recital at Warbler's Nest
          index = Enum.find_index(shrines, fn(s) -> s.id == 93 end)
          List.delete_at(shrines, index)
      end
    end

    shrines = cond do
      Map.has_key?(params, :beasts) == false ->
        # The Undefeated Champ
        index = Enum.find_index(shrines, fn(s) -> s.id == 103 end)
        List.delete_at(shrines, index)
      true -> cond do
        Enum.member?(params.beasts, "naboris") -> shrines
        true ->
          # The Undefeated Champ
          index = Enum.find_index(shrines, fn(s) -> s.id == 103 end)
          List.delete_at(shrines, index)
      end
    end

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

    shrines = cond do
      Enum.member?(params.other_opts, "teaching") -> shrines
      true ->
        # Ta'loh Naeg's Teaching
        index = Enum.find_index(shrines, fn(s) -> s.id == 18 end)
        List.delete_at(shrines, index)
    end

    # Clears shrines from regions, tests of strength, and blessings
    shrines = for shrine <- shrines do
      region = Enum.member?(params.regions, shrine.region)

      tos = cond do
        Map.has_key?(params, :tests_of_strength) == false ->
          Enum.member?([nil], shrine.tos)
        true ->
          Enum.member?(params.tests_of_strength ++ [nil], shrine.tos)
      end

      blessing = cond do
        shrine.blessing ->
          case params.blessings do
            "quests" ->
              cond do
                shrine.quest == nil -> true
                shrine.quest.forced -> true
                true -> false
              end
            "all"  -> true
            "none" -> false
          end
        true -> true
      end

      cond do
        Enum.member?([region, tos, blessing], false) -> nil
        true -> shrine
      end
    end

    shrines = shrines |> Enum.uniq |> List.delete(nil)

    beasts ++ shrines
  end

  def gen_run(params) do
    :rand.seed(:exs1024, {String.to_integer(params.seed), 0, 0})

    plateau = case params.plat_shuffle do
      true -> gen_plateau(params.seed)
      false -> []
    end

    shrine_pool = gen_pool(params)
    cond do
      length(shrine_pool) < 36 ->
        {:error, "Selected options is not enough to finish a run."}
      true ->
        pool = Enum.take_random(shrine_pool, 36) |> Enum.uniq
        beast_pool = Enum.filter(pool, fn(s) -> s.orbs == 4 end)
        shrine_pool = Enum.filter(pool, fn(s) -> s.orbs == 1 end)

        # Check to remove shrines required by beasts if they did not make it in
        medoh = Enum.find(beast_pool, fn(b) -> b.id == 0 end)
        nest = Enum.find(shrine_pool, fn(s) -> s.id == 93 end)

        naboris = Enum.find(beast_pool, fn(b) -> b.id == 1 end)
        champ = Enum.find(shrine_pool, fn(s) -> s.id == 103 end)

        shrine_pool = case {medoh, nest} do
          {nil, nil} -> shrine_pool
          {_medoh, nil} -> shrine_pool
          {nil, _nest} ->
            index = Enum.find_index(shrine_pool, fn(s) -> s.id == 93 end)
            List.delete_at(shrine_pool, index)
          {_medoh, _nest} -> shrine_pool
        end

        shrine_pool = case {naboris, champ} do
          {nil, nil} -> shrine_pool
          {_naboris, nil} -> shrine_pool
          {nil, _champ} ->
            index = Enum.find_index(shrine_pool, fn(s) -> s.id == 103 end)
            List.delete_at(shrine_pool, index)
          {_naboris, _champ} -> shrine_pool
        end

        # Generate the final list and shuffle it
        pool = Enum.take_random(shrine_pool, 36 - length(beast_pool) * 4) ++ beast_pool |> Enum.shuffle

        # Verify that a beast required quest does not come before the beast
        medoh_index = Enum.find_index(pool, fn(b) -> b.id == 0 end)
        nest_index = Enum.find_index(pool, fn(s) -> s.id == 93 end)

        naboris_index = Enum.find_index(pool, fn(b) -> b.id == 1 end)
        champ_index = Enum.find_index(pool, fn(s) -> s.id == 103 end)

        pool = cond do
          nest_index == nil -> pool
          medoh_index == nil -> pool
          nest_index > medoh_index -> pool
          nest_index < medoh_index ->
            pool = List.delete_at(pool, nest_index)
            List.insert_at(pool, Enum.random(medoh_index..length(pool)), nest)
          true -> pool
        end

        pool = cond do
          champ_index == nil -> pool
          naboris_index == nil -> pool
          champ_index > naboris_index -> pool
          champ_index < naboris_index ->
            pool = List.delete_at(pool, champ_index)
            List.insert_at(pool, Enum.random(naboris_index..length(pool)), champ)
          true -> pool
        end

        pool = plateau ++ pool ++ [%{
          name: "The Hero's Sword",
          region: "Woodland",
          trial: nil,
          quest: nil,
          orbs: 4
        }]
        {:ok, pool}
    end
  end
end
