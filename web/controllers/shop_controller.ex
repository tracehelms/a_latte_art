defmodule ALatteArt.ShopController do
  use ALatteArt.Web, :controller
  alias ALatteArt.Repo
  alias ALatteArt.Shop
  alias ALatteArt.Artwork

  def index(conn, _params) do
    shops = Repo.all(Shop)
    json conn, shops: shops
  end

  def show(conn, %{"id" => id}) do
    case id do
      "1" ->
        results = %{
          name: "The Laughing Goat",
          id: 1,
          location: "123, 456",
          artwork: [
            %{src: "http://fillmurray.com/500/500", title: "A Latte Murray", price: "$24.99", artist_id: 1, shop_id: 1},
            %{src: "http://fillmurray.com/600/600", title: "A Latte Murray", price: "$39.99", artist_id: 2, shop_id: 1},
            %{src: "http://fillmurray.com/700/700", title: "A Latte Murray", price: "$99.99", artist_id: 3, shop_id: 1},
            %{src: "http://fillmurray.com/800/800", title: "A Latte Murray", price: "$124.99", artist_id: 1, shop_id: 1},
            %{src: "http://fillmurray.com/500/500", title: "A Latte Murray", price: "$24.99", artist_id: 1, shop_id: 1},
            %{src: "http://fillmurray.com/600/600", title: "A Latte Murray", price: "$39.99", artist_id: 2, shop_id: 1},
            %{src: "http://fillmurray.com/800/300", title: "A Latte Murray", price: "$99.99", artist_id: 3, shop_id: 1},
            %{src: "http://fillmurray.com/800/200", title: "A Latte Murray", price: "$124.99", artist_id: 1, shop_id: 1},
            %{src: "http://fillmurray.com/700/500", title: "A Latte Murray", price: "$24.99", artist_id: 1, shop_id: 1},
            %{src: "http://fillmurray.com/600/600", title: "A Latte Murray", price: "$39.99", artist_id: 2, shop_id: 1},
            %{src: "http://fillmurray.com/700/400", title: "A Latte Murray", price: "$99.99", artist_id: 3, shop_id: 1},
            %{src: "http://fillmurray.com/800/800", title: "A Latte Murray", price: "$124.99", artist_id: 1, shop_id: 1}
          ]
        }
      "2" ->
        results = %{
          name: "Pekoe Sip House",
          id: 2,
          location: "123, 456",
          url: "/shops/2/",
          artwork: [
            %{src: "http://fillmurray.com/500/500", title: "A Latte Murray", price: "$24.99", artist_id: 1, shop_id: 2},
            %{src: "http://fillmurray.com/600/600", title: "A Latte Murray", price: "$39.99", artist_id: 3, shop_id: 2},
            %{src: "http://fillmurray.com/800/800", title: "A Latte Murray", price: "$124.99", artist_id: 1, shop_id: 2},
            %{src: "http://fillmurray.com/500/500", title: "A Latte Murray", price: "$24.99", artist_id: 1, shop_id: 2},
            %{src: "http://fillmurray.com/600/600", title: "A Latte Murray", price: "$39.99", artist_id: 3, shop_id: 2},
            %{src: "http://fillmurray.com/800/800", title: "A Latte Murray", price: "$124.99", artist_id: 1, shop_id: 2},
            %{src: "http://fillmurray.com/500/500", title: "A Latte Murray", price: "$24.99", artist_id: 1, shop_id: 2},
            %{src: "http://fillmurray.com/900/100", title: "A Latte Murray", price: "$39.99", artist_id: 3, shop_id: 2},
            %{src: "http://fillmurray.com/800/100", title: "A Latte Murray", price: "$124.99", artist_id: 1, shop_id: 2},
            %{src: "http://fillmurray.com/500/200", title: "A Latte Murray", price: "$24.99", artist_id: 1, shop_id: 2},
            %{src: "http://fillmurray.com/600/600", title: "A Latte Murray", price: "$39.99", artist_id: 3, shop_id: 2},
            %{src: "http://fillmurray.com/800/700", title: "A Latte Murray", price: "$124.99", artist_id: 1, shop_id: 2},
          ]
        }
      "3" ->
        results = %{
          name: "Ozo Coffee",
          id: 3,
          location: "123, 456",
          url: "/shops/3/",
          artwork: [
            %{src: "http://fillmurray.com/600/600", title: "A Latte Murray", price: "$39.99", artist_id: 2, shop_id: 3},
            %{src: "http://fillmurray.com/700/600", title: "A Latte Murray", price: "$99.99", artist_id: 3, shop_id: 3},
            %{src: "http://fillmurray.com/800/800", title: "A Latte Murray", price: "$124.99", artist_id: 1, shop_id: 3},
            %{src: "http://fillmurray.com/900/600", title: "A Latte Murray", price: "$39.99", artist_id: 2, shop_id: 3},
            %{src: "http://fillmurray.com/700/900", title: "A Latte Murray", price: "$99.99", artist_id: 3, shop_id: 3},
            %{src: "http://fillmurray.com/700/800", title: "A Latte Murray", price: "$124.99", artist_id: 1, shop_id: 3},
            %{src: "http://fillmurray.com/600/200", title: "A Latte Murray", price: "$39.99", artist_id: 2, shop_id: 3},
            %{src: "http://fillmurray.com/700/700", title: "A Latte Murray", price: "$99.99", artist_id: 3, shop_id: 3},
            %{src: "http://fillmurray.com/400/200", title: "A Latte Murray", price: "$124.99", artist_id: 1, shop_id: 3},
            %{src: "http://fillmurray.com/600/600", title: "A Latte Murray", price: "$39.99", artist_id: 2, shop_id: 3},
            %{src: "http://fillmurray.com/700/300", title: "A Latte Murray", price: "$99.99", artist_id: 3, shop_id: 3},
            %{src: "http://fillmurray.com/400/800", title: "A Latte Murray", price: "$124.99", artist_id: 1, shop_id: 3}
          ]
        }
    end
    json conn, results
  end
end
