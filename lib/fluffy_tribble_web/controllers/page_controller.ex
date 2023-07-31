defmodule FluffyTribbleWeb.PageController do
  use FluffyTribbleWeb, :controller

  def index(conn, _params) do
    render(conn, "indexpage.html")
  end
end
