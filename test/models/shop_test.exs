defmodule ALatteArt.ShopTest do
  use ALatteArt.ModelCase

  alias ALatteArt.Shop

  @valid_attrs %{address: "some content", name: "some content", phone: "some content", website: "some content"}
  @valid_attrs_2 %{address: "some content", name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Shop.changeset(%Shop{}, @valid_attrs)
    assert changeset.valid?

    changeset = Shop.changeset(%Shop{}, @valid_attrs_2)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Shop.changeset(%Shop{}, @invalid_attrs)
    refute changeset.valid?
  end

  test "name must be at least 3 characters" do
    changeset = Shop.changeset(%Shop{}, %{address: "some content", name: "ab", phone: "some content", website: "some content"})
    refute changeset.valid?
  end

  test "address must be at least 3 characters" do
    changeset = Shop.changeset(%Shop{}, %{address: "ab", name: "some content", phone: "some content", website: "some content"})
    refute changeset.valid?
  end
end
