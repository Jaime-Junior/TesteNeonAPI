Dado("que eu envio um GET para a API Planetas") do
  @url = @planetas.api_planetas
  expect(@url.code).to eql 200
end

Quando("armazeno o valor do campo count") do
  @count = @response["count"]
end

Então("envio um novo GET acrescentando {int} ao valor do count") do |int|
  $newcount = @count + int
  @novocount = @planetas.api_novo_get
end

Então("valido o statuscode de erro") do
  expect(@novocount.code).to eql 404
  puts "O statuscode é #{@novocount.code}"
end

Então("valido a mensagem de erro") do
  expect(@novocount["detail"]).to eql "Not found"
  puts "A mensagem de erro é #{@novocount}"
end
