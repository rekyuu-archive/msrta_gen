defmodule MsrtaGen.RunController do
  alias MsrtaGen.Run
  use MsrtaGen.Web, :controller

  def create(conn, run_params) do
    changeset = Run.changeset(%Run{}, run_params)

    case Repo.insert(changeset) do
      {:ok, run} ->
        redirect conn, to: "/run/#{run.id}"
      {:error, changeset} ->
        IO.inspect changeset
        redirect conn, to: "/"
    end

    # redirect conn, to: "/run/#{run_params["seed"]}"
  end

  def show(conn, %{"id" => id}) do
    run = Repo.get!(Run, id)
    render conn, "show.html", run: run
  end
end
