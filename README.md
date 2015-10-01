# ALatteArt

## Up & Running (Backend)

### Prequisites
1. Install Elixir `brew install elixir`
2. [Install Phoenix](http://www.phoenixframework.org/docs/installation)
  - If you get a permissions error when creating the database, run `createuser -s postgres` and retry

### Seeding Data
1. Make sure you've migrated your database `mix ecto.migrate`
2. Run `mix run priv/repo/seeds.ex`

### Running The Server
1. Start the server `mix phoenix.server`
2. Browse to [http://localhost:4000/api/shops/](http://localhost:4000/api/shops/) to make sure you get JSON data

### Testing
1. Run `mix test`


## Data Format (here for reference only....should soon be deleted and replaced with another documentation method)
{
 id: 1,
 name: 'Laughing Goat',
 location: 'lat,lon',
 artists: [1, 2],
 artwork: [{id: 1, src: '/img/a.png', title: 'A', price: '$25.99'}]
}
