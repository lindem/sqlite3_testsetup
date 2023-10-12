defmodule Sqlite3Testsetup.Repo.Migrations.CreateThing do
  use Ecto.Migration

  def change do
    create table(:thing) do
      add :thingvalue, :integer
      add :thingdescription, :string

      timestamps()
    end
  end
end
