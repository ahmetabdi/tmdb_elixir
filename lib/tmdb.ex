defmodule Tmdb do
  def get(endpoint) do
    url = "http://api.themoviedb.org/3/" <> endpoint <> "?api_key=" <> api_key

    case HTTPoison.get("#{url}") do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.decode!(body) }
      {:ok, %HTTPoison.Response{status_code: status_code, body: body}} when status_code in 401..409 ->
        {:error, Poison.decode!(body) }
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %{"message": reason} }
    end
  end

  def post(endpoint, body) do
    # Tmdb.post!(endpoint, JSX.encode! body).body
  end

  def api_key do
    Application.get_env(:marvel, :api_key, System.get_env("TMDB_KEY"))
  end

  defp timestamp do
    round(Timex.Time.now(:secs))
  end

end
