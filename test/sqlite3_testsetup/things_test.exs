defmodule Sqlite3Testsetup.ThingsTest do
  use Sqlite3Testsetup.DataCase

  alias Sqlite3Testsetup.Things

  describe "thing" do
    alias Sqlite3Testsetup.Things.Thing

    import Sqlite3Testsetup.ThingsFixtures

    @invalid_attrs %{thingdescription: nil, thingvalue: nil}

    test "list_thing/0 returns all thing" do
      thing = thing_fixture()
      assert Things.list_thing() == [thing]
    end

    test "get_thing!/1 returns the thing with given id" do
      thing = thing_fixture()
      assert Things.get_thing!(thing.id) == thing
    end

    test "create_thing/1 with valid data creates a thing" do
      valid_attrs = %{thingdescription: "some thingdescription", thingvalue: 42}

      assert {:ok, %Thing{} = thing} = Things.create_thing(valid_attrs)
      assert thing.thingdescription == "some thingdescription"
      assert thing.thingvalue == 42
    end

    test "create_thing/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Things.create_thing(@invalid_attrs)
    end

    test "update_thing/2 with valid data updates the thing" do
      thing = thing_fixture()
      update_attrs = %{thingdescription: "some updated thingdescription", thingvalue: 43}

      assert {:ok, %Thing{} = thing} = Things.update_thing(thing, update_attrs)
      assert thing.thingdescription == "some updated thingdescription"
      assert thing.thingvalue == 43
    end

    test "update_thing/2 with invalid data returns error changeset" do
      thing = thing_fixture()
      assert {:error, %Ecto.Changeset{}} = Things.update_thing(thing, @invalid_attrs)
      assert thing == Things.get_thing!(thing.id)
    end

    test "delete_thing/1 deletes the thing" do
      thing = thing_fixture()
      assert {:ok, %Thing{}} = Things.delete_thing(thing)
      assert_raise Ecto.NoResultsError, fn -> Things.get_thing!(thing.id) end
    end

    test "change_thing/1 returns a thing changeset" do
      thing = thing_fixture()
      assert %Ecto.Changeset{} = Things.change_thing(thing)
    end
  end
end
