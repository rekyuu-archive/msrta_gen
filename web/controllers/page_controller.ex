defmodule MsrtaGen.PageController do
  use MsrtaGen.Web, :controller
  import MsrtaGen.Util

  def index(conn, _params) do
    render conn, "index.html", [seed: Util.gen_seed]
  end
end
