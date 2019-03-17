defmodule LivinWeb.PageController do
  use LivinWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
