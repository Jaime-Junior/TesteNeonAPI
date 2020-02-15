class PlanetasApi
  include HTTParty

  def api_planetas
    get("http://swapi.co/api/planets/")
  end
end
