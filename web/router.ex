defmodule ALatteArt.Router do
  use ALatteArt.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  # Other scopes may use custom stacks.
  scope "/api", ALatteArt do
    pipe_through :api

    resources "/shops", ShopController
  end
end
