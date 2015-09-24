defmodule ALatteArt.ShopController do
  use ALatteArt.Web, :controller

  def index(conn, _params) do
    shops = [
      %{name: "The Laughing Goat", id: 1, location: "123, 456", src: "http://www.placecage.com/g/200/200"},
      %{name: "Pekoe Sip House", id: 2, location: "123, 456", src: "http://www.placecage.com/g/200/200"},
      %{name: "Ozo Coffee", id: 3, location: "123, 456", src: "http://www.placecage.com/g/200/200"},
      %{name: "Boxcar Coffee Roasters", id: 4, location: "123, 456", src: "http://www.placecage.com/g/200/200"},
      %{name: "Red Rock Coffeehouse", id: 5, location: "123, 456", src: "http://www.placecage.com/g/200/200"},
      %{name: "The Cup", id: 6, location: "123, 456", src: "http://www.placecage.com/g/200/200"},
      %{name: "Flatiron Coffee", id: 7, location: "123, 456", src: "http://www.placecage.com/g/200/200"},
      %{name: "Village Coffeeshop", id: 8, location: "123, 456", src: "http://www.placecage.com/g/200/200"},
      %{name: "The Unseen Bean", id: 9, location: "123, 456", src: "http://www.placecage.com/g/200/200"},
      %{name: "Market Brewers Coffee", id: 10, location: "123, 456", src: "http://www.placecage.com/g/200/200"}
    ]
    json conn, shops
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
