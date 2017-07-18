defmodule MsrtaGen.Run do
  use MsrtaGen.Web, :model

  schema "runs" do
    field :seed,              :string
    field :quest_mode,        :boolean
    field :plat_shuffle,      :boolean
    field :beasts,            {:array, :string}
    field :regions,           {:array, :string}
    field :tests_of_strength, {:array, :string}
    field :blessings,         :string
    field :bloody_moon,       :boolean

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:seed, :quest_mode, :plat_shuffle, :beasts, :regions, :tests_of_strength, :blessings, :bloody_moon])
    |> validate_required([:seed, :quest_mode, :plat_shuffle, :beasts, :regions, :tests_of_strength, :blessings, :bloody_moon])
  end
end
