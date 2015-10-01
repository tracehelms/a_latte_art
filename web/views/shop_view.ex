defmodule ALatteArt.ShopView do
  use ALatteArt.Web, :view

  def render("index.json", %{shops: shops}) do
    %{data: render_many(shops, ALatteArt.ShopView, "shop.json")}
  end

  def render("show.json", %{shop: shop}) do
    %{data: render_one(shop, ALatteArt.ShopView, "shop.json")}
  end

  def render("shop.json", %{shop: shop}) do
    %{id: shop.id,
      name: shop.name,
      address: shop.address,
      website: shop.website,
      phone: shop.phone}
  end
end
