Dado("que eu faça um GET na api") do
    @result = HTTParty.get 'https://pokeapi.co/'
end

Entao("o retorno da requisicao sera {int}") do |status|
    puts @result.code
    expect(@result.code).to eq status
end

# Consultando Pokemon
Dado("que eu tenha uma lista de pokemons") do
    @result = HTTParty.get 'http://pokeapi.co/api/v2/'
end

Quando("faco a consulta do servico {string}") do |name|
    @result = HTTParty.get("http://pokeapi.co/api/v2/#{name}")
end

Entao("o codigo de resposta sera {int}") do |status|
    expect(@result.code).to eq status
end
  
  Entao("o sistema retorna os dados desse pokemon") do
    puts "ID: #{@result["id"]}"
    puts "NOME: #{@result["name"]}"
end