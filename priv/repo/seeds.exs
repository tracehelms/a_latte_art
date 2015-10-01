# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     ALatteArt.Repo.insert!(%SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

shops = [
  %{name: "The Laughing Goat", id: 1, address: "1709 Pearl St, Boulder, CO 80302", website: "http://example.com/laughing_goat", phone: "1234567890"},
  %{name: "Pekoe Sip House", id: 2, address: "2500 30th St #100, Boulder, CO 80301", website: "http://example.com/pekoe_sip_house", phone: "1234567890"},
  %{name: "Ozo Coffee", id: 3, address: "1015 Pearl St, Boulder, CO 80302", website: "http://example.com/ozo_coffee", phone: "1234567890"}
]

# artists = [
#   %{name: "Brian Monet", id: 1},
#   %{name: "Josh Dali", id: 2},
#   %{name: "Jacob DaVinci", id: 3}
# ]
#
# artworks = [
#   %{src: "http://fillmurray.com/500/500", title: "A Latte Murray", price: "$24.99", artist_id: 1, shop_id: 1},
#   %{src: "http://fillmurray.com/600/600", title: "A Latte Murray", price: "$39.99", artist_id: 2, shop_id: 1},
#   %{src: "http://fillmurray.com/700/700", title: "A Latte Murray", price: "$99.99", artist_id: 3, shop_id: 1},
# ]

for shop <- shops do
  new_shop = Map.merge(%ALatteArt.Shop{}, shop)
  ALatteArt.Repo.insert!(new_shop)
end

# for artist <- artists do
#   new_artist = Map.merge(%ALatteArt.Artist{}, artist)
#   ALatteArt.Repo.insert!(new_artist)
# end
#
# for artwork <- artworks do
#   new_artwork = Map.merge(%ALatteArt.Artwork{}, artwork)
#   ALatteArt.Repo.insert!(new_artwork)
# end
