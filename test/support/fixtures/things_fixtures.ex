defmodule Sqlite3Testsetup.ThingsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Sqlite3Testsetup.Things` context.
  """

  @doc """
  Generate a thing.
  """
  def thing_fixture(attrs \\ %{}) do
    {:ok, thing} =
      attrs
      |> Enum.into(%{
        thingdescription: "some thingdescription",
        thingvalue: 42
      })
      |> Sqlite3Testsetup.Things.create_thing()

    thing
  end
end
