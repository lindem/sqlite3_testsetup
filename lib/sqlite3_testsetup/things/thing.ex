defmodule Sqlite3Testsetup.Things.Thing do
  use Ecto.Schema
  import Ecto.Changeset

  schema "thing" do
    field :thingdescription, :string
    field :thingvalue, :integer

    timestamps()
  end

  @doc false
  def changeset(thing, attrs) do
    thing
    |> cast(attrs, [:thingvalue, :thingdescription])
    |> validate_required([:thingvalue, :thingdescription])
  end
end
