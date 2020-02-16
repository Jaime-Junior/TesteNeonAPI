Dado("que eu envio um GET para a API filmes") do
  @url = @filmes.api_filmes
end

Quando("recebo a resposta da API") do
  @response = @url
end

Quando("armazeno o valor do campo title") do
  @filme = @response["results"][0]["title"]
  @filme2 = @response["results"][1]["title"]
  @filme3 = @response["results"][2]["title"]
  @filme4 = @response["results"][3]["title"]
  @filme5 = @response["results"][4]["title"]
  @filme6 = @response["results"][5]["title"]
  @filme7 = @response["results"][6]["title"]

  @titulos = [@filme, @filme2, @filme3, @filme4, @filme5, @filme6, @filme7]
end

Então("verifico o statuscode de sucesso da API") do
  expect(@response.code).to eql 200
  puts "O statuscode é #{@response.code}"
end

Então("exibo os valores armazenados") do
  puts @titulos
end
