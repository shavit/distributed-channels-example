defmodule PhxRedisWeb.PageController do
  use PhxRedisWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
