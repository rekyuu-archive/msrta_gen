defmodule MsrtaGen.Run do
  use MsrtaGen.Web, :model

  schema "runs" do
    field :seed,              :string
    field :quest_mode,        :boolean
    field :plat_shuffle,      :boolean
    field :beasts,            {:array, :string}, default: []
    field :regions,           {:array, :string}
    field :tests_of_strength, {:array, :string}, default: []
    field :blessings,         :string
    field :other_opts,        {:array, :string}, default: []

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:seed, :quest_mode, :plat_shuffle, :beasts, :regions, :tests_of_strength, :blessings, :other_opts])
    |> validate_required([:seed, :quest_mode, :plat_shuffle, :regions, :blessings])
  end
end
