defmodule SpinningCatWeb.PageController do
  use SpinningCatWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
