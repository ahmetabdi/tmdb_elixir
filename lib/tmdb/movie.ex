defmodule Tmdb.Movie do
  def popular do
    Tmdb.get("movie/popular")
  end

  def top_rated do
    Tmdb.get("movie/top_rated")
  end

  def now_playing do
    Tmdb.get("movie/now_playing")
  end

  def upcoming do
    Tmdb.get("movie/upcoming")
  end

  def latest do
    Tmdb.get("movie/latest")
  end
end
