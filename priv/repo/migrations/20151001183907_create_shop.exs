defmodule ALatteArt.Repo.Migrations.CreateShop do
  use Ecto.Migration

  def change do
    create table(:shops) do
      add :name, :string
      add :address, :string
      add :website, :string
      add :phone, :string

      timestamps
    end

  end
end
