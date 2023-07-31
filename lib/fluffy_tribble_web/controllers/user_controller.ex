defmodule FluffyTribbleWeb.UserController do
  use FluffyTribbleWeb, :controller

  alias FluffyTribble.Accounts

  action_fallback FluffyTribbleWeb.FallbackController

  def index(conn, _params) do
    users = Accounts.list_users()
    render(conn, "index.html", users: users)
  end

  # TODO
  def show(conn, %{"id" => id}) do
    user = Accounts.get_user(id)
    render(conn, "show.html", user: user)
  end
end
