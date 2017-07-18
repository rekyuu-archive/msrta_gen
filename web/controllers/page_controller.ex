defmodule MsrtaGen.PageController do
  use MsrtaGen.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def show(conn, %{"id" => id}) do
    render conn, "show.html", id: id
  end

  def gen(conn, _params) do
    render conn, "index.html"
  end
end
