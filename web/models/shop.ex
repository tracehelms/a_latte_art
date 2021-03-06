defmodule ALatteArt.Shop do
  use ALatteArt.Web, :model

  schema "shops" do
    field :name, :string
    field :address, :string
    field :website, :string
    field :phone, :string

    timestamps
  end

  @required_fields ~w(name address)
  @optional_fields ~w(website phone)

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
    |> validate_length(:name, min: 3)
    |> validate_length(:address, min: 3)
  end
end
