defmodule MsrtaGen.RunController do
  alias MsrtaGen.Run
  alias MsrtaGen.Util
  use MsrtaGen.Web, :controller

  def create(conn, run_params) do
    changeset = Run.changeset(%Run{}, run_params)

    case changeset.errors do
      errors when length(errors) >= 1 ->
        error_list = for error <- errors do
          {key, {reason, _}} = error
          "#{Atom.to_string(key)}: #{reason}"
        end

        conn
        |> put_flash(:error, error_list |> Enum.join(", "))
        |> redirect(to: "/")
      _ ->
        run = Util.gen_run(changeset.changes)

        case run do
          {:ok, _} ->
            case Repo.insert(changeset) do
              {:ok, run} ->
                redirect conn, to: "/run/#{run.id}"
              {:error, changeset} ->
                IO.inspect changeset

                conn
                |> put_flash(:error, "Unknown error!")
                |> redirect(to: "/")
            end
          {:error, error} ->
            conn
            |> put_flash(:error, error)
            |> redirect(to: "/")
        end
    end
  end

  def show(conn, %{"id" => id}) do
    run = Repo.get!(Run, id)
    {:ok, goals} = Util.gen_run(run)
    render conn, "show.html", run: Map.merge(run, %{goals: goals})
  end
end
