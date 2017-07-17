defmodule MsrtaGen.PageController do
  use MsrtaGen.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
