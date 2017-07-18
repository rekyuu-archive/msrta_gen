defmodule Msrta.Util do
  import Msrta.Definitions

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

  def gen_run(params) do
    total_orbs = 36
    :rand.seed(:exs1024, {params.seed, 0, 0})

    plateau = case params.plat_shuffle do
      true -> gen_plateau(params.seed)
      false -> nil
    end
  end
end
