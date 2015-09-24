defmodule ALatteArt.ShopController do
  use ALatteArt.Web, :controller

  def index(conn, _params) do
    shops = %{
      shops: [
        %{name: "The Laughing Goat", id: 1, location: "123, 456", url: "/shops/1/"},
        %{name: "Pekoe Sip House", id: 2, location: "123, 456", url: "/shops/2/"},
        %{name: "Ozo Coffee", id: 3, location: "123, 456", url: "/shops/3/"}
      ]
    }
    json conn, shops
  end

  def show(conn, _params) do
    results = %{
      name: "Laughing Goat",
      location: "123, 456",
      artwork: [
        %{src: "http://fillmurray.com/500/500", title: "A Latte Murray", price: "$24.99"},
        %{src: "http://fillmurray.com/600/600", title: "A Latte Murray", price: "$39.99"},
        %{src: "http://fillmurray.com/700/700", title: "A Latte Murray", price: "$99.99"},
        %{src: "http://fillmurray.com/800/800", title: "A Latte Murray", price: "$124.99"}
      ]
    }
    json conn, results
  end
end
