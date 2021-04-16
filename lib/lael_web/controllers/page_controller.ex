defmodule LaelWeb.PageController do
  use LaelWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
