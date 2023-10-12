defmodule Sqlite3TestsetupWeb.Router do
  use Sqlite3TestsetupWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {Sqlite3TestsetupWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Sqlite3TestsetupWeb do
    pipe_through :browser

    get "/", PageController, :home
    live "/thing", ThingLive.Index, :index
    live "/thing/new", ThingLive.Index, :new
    live "/thing/:id/edit", ThingLive.Index, :edit

    live "/thing/:id", ThingLive.Show, :show
    live "/thing/:id/show/edit", ThingLive.Show, :edit
  end

  # Other scopes may use custom stacks.
  # scope "/api", Sqlite3TestsetupWeb do
  #   pipe_through :api
  # end

  # Enable LiveDashboard and Swoosh mailbox preview in development
  if Application.compile_env(:sqlite3_testsetup, :dev_routes) do
    # If you want to use the LiveDashboard in production, you should put
    # it behind authentication and allow only admins to access it.
    # If your application does not have an admins-only section yet,
    # you can use Plug.BasicAuth to set up some basic authentication
    # as long as you are also using SSL (which you should anyway).
    import Phoenix.LiveDashboard.Router

    scope "/dev" do
      pipe_through :browser

      live_dashboard "/dashboard", metrics: Sqlite3TestsetupWeb.Telemetry
      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end
end
