class PlanetasApi
  include HTTParty

  def api_planetas
    HTTParty.get("http://swapi.co/api/planets/")
  end

  def api_novo_get
    HTTParty.get("http://swapi.co/api/planets/#{$newcount}")
  end
end
