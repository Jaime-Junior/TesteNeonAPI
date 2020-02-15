#language:pt

Funcionalidade: Requisição da API
    Como o usuário faz requsição à API

@filmes
Cenario: Requisição Filmes
    Dado que eu envio um GET para a API filmes
    Quando recebo a resposta da API
    E armazeno o valor do campo title
    Então verifico o statuscode de sucesso da API
    E exibo os valores armazenados

@planetas
Cenario: Requisição Planetas
    Dado que eu envio um GET para a API Planetas
    Quando recebo a resposta da API
    E armazeno o valor do campo count
    Então envio um novo GET acrescentando 1 ao valor do count
    E valido o statuscode de erro
    E valido a mensagem de erro