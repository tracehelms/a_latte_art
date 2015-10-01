defmodule ALatteArt.ShopTest do
  use ALatteArt.ModelCase

  alias ALatteArt.Shop

  @valid_attrs %{address: "some content", name: "some content", phone: "some content", website: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Shop.changeset(%Shop{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Shop.changeset(%Shop{}, @invalid_attrs)
    refute changeset.valid?
  end
end
