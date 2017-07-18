defmodule MsrtaGen.RunController do
  alias MsrtaGen.Run
  alias MsrtaGen.Util
  use MsrtaGen.Web, :controller

  def create(conn, run_params) do
    changeset = Run.changeset(%Run{}, run_params)

    IO.inspect changeset

    case Repo.insert(changeset) do
      {:ok, run} ->
        redirect conn, to: "/run/#{run.id}"
      {:error, changeset} ->
        IO.inspect changeset
        redirect conn, to: "/"
    end
  end

  def show(conn, %{"id" => id}) do
    run = Repo.get!(Run, id)
    render conn, "show.html", run: run
  end
end
