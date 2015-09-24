shops = [
  %{name: "The Laughing Goat", id: 1, location: "123, 456", url: "/shops/1/"},
  %{name: "Pekoe Sip House", id: 2, location: "123, 456", url: "/shops/2/"},
  %{name: "Ozo Coffee", id: 3, location: "123, 456", url: "/shops/3/"}
]

artists = [
  %{name: "Brian Monet", id: 1},
  %{name: "Josh Dali", id: 2},
  %{name: "Jacob DaVinci", id: 3}
]

artworks = [
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
  %{src: "http://fillmurray.com/800/800", title: "A Latte Murray", price: "$124.99", artist_id: 1, shop_id: 1},

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

for shop <- shops do
  new_shop = Map.merge(%ALatteArt.Shop{}, shop)
  ALatteArt.Repo.insert(new_shop)
end

for artist <- artists do
  new_artist = Map.merge(%ALatteArt.Artist{}, artist)
  ALatteArt.Repo.insert(new_artist)
end

for artwork <- artworks do
  new_artwork = Map.merge(%ALatteArt.Artwork{}, artwork)
  ALatteArt.Repo.insert(new_artwork)
end
