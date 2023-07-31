defmodule FluffyTribbleWeb.Router do
  use FluffyTribbleWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :put_root_layout, {FluffyTribbleWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", FluffyTribbleWeb do
    pipe_through :browser

    get "/api/users/:id", PageController, :index
    resources "/users", UserController, except: [:create, :show, :index, :new]
  end

  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through :browser

      live_dashboard "/dashboard", metrics: RumblWeb.Telemetry
    end
  end
end
