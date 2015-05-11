defmodule Tmdb.Movie do
  def popular do
    Tmdb.get("movie/popular")
  end
end
