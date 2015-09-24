defmodule ALatteArt.Router do
  use ALatteArt.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ALatteArt do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  scope "/api", ALatteArt do
    pipe_through :api

    # get "/", HomeController, :index
    # get "/shops", ShopController, :index
    # get "/shops/:id", ShopController, :show
  end
end
