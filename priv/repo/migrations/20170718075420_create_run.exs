defmodule MsrtaGen.Repo.Migrations.CreateRun do
  use Ecto.Migration

  def change do
    create table(:runs) do
      add :seed,              :string
      add :quest_mode,        :boolean
      add :plat_shuffle,      :boolean
      add :beasts,            {:array, :string}
      add :regions,           {:array, :string}
      add :tests_of_strength, {:array, :string}
      add :blessings,         :string
      add :bloody_moon,       :boolean

      timestamps()
    end

  end
end
