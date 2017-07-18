defmodule MsrtaGen.PageController do
  use MsrtaGen.Web, :controller

  def index(conn, _params) do
    render conn, "index.html", seed: Enum.random(1..9999999999999999)
  end
end
