class FilmesApi
  include HTTParty

  def api_filmes
    HTTParty.get("http://swapi.co/api/films/")
  end
end
