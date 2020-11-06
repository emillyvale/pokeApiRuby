#language: pt

Funcionalidade: Consultar Pokemon

@executa
Cenario: Fazendo requisicao

  Dado que eu faça um GET na api
  Entao o retorno da requisicao sera 200

@executa_pokemon
Cenario: Consultar um pokemon

    Dado que eu tenha uma lista de pokemons
    Quando faco a consulta do servico "pokemon/pikachu"
    Entao o codigo de resposta sera 200
        E o sistema retorna os dados desse pokemon


