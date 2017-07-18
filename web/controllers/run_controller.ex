defmodule MsrtaGen.RunController do
  use MsrtaGen.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def new(conn, _params) do
    render conn, "index.html"
  end

  def create(conn, _params) do
    render conn, "index.html"
  end

  def show(conn, %{"id" => id}) do
    render conn, "index.html", id: id
  end

  def edit(conn, %{"id" => id}) do
    render conn, "index.html", id: id
  end

  def update(conn, %{"id" => id}) do
    render conn, "index.html", id: id
  end

  def delete(conn, %{"id" => id}) do
    render conn, "index.html", id: id
  end
end
