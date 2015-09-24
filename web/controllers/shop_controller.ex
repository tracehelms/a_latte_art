defmodule ALatteArt.ShopController do
  use ALatteArt.Web, :controller

  def show(conn, _params) do
    results = %{
      name: "Laughing Goat",
      location: "123, 456",
      artwork: [
        %{src: "http://fillmurray.com/500/500", title: "A Latte Murray", price: "$24.99"}
      ]
    }
    json conn, results
  end
end
