# puts "Ola mundo ruby"
# # definindo variais, .class para imprimir o tipo de arquivo
# nome = "Kassio Lucas"
# puts nome.class
# # ao colocar _ o ruby entender que é uma casa de milhar
# numero = 1_000_000_000
# puts numero

# puts "Digite seu nome"

# nome = gets.chomp

# puts "O seu nome é: " + nome.inspec

# puts "Digite seu salario"
# sal = gets.chomp.to_f
# puts sal

# to_i converte para inteiro
# to_f converte para float
# to_s converte para string

# condicionais

# puts ou print 

# puts "Digite um numero"
# x = gets.chomp.to_i
# # if x > 2
# #     puts "x maior que 2"
# # end

# idade = 5

# case idade
# when 0..2
#     puts "bb"
# when 3..12
#     puts "crianca"
# when 13..20
#     puts "adulto"
# end
# # unless usado como um if else
# unless x >= 2
#     puts "x é menor que 2"
# else 
#     puts "x é maior que 2"
# end


# i = 0
# num = 5

# while i < num do
#     puts "contando: " + i.to_s
#     i = i+1
# end

# (0..5).each do |i|
#     puts "valor lido foi " +i.to_s
# end


# arrays

# v = Array.new
# v = [] # Array.new
# v.push(15)
# v.push(52)

# v = [1,2,3,4,5,6]

# v.each do |item|
#     puts item
# end

# para acessar o indice v[indice]


# hashes
# h = {"x" => 15, "curso" => "rails"}
# # h = {"x": 15, "curso": "rails"}
# puts h["curso"]
# sobrenome = 'leodido'
# nome = 'kassio lucas de holanda ' << sobrenome #modifica o valor de nome
# puts nome

# x = 'curso'
# puts x.object_id
# x + ' rails'
# # puts x
# puts x.object_id
# puts "--------"
# q = 'curso de '
# puts q.object_id
# q<< 'rails'
# puts q
# puts q.object_id

# utilizar << nao gera local em memoria

# nome = "kassio" #so funciona com aspas duplas, com aspas simples não pode ser interpolada
# puts "seu nome é #{nome}"

# SIMBOLOS

# puts "Kassio".object_id
# puts "Kassio".object_id
# puts "Kassio".object_id
# puts "Kassio".object_id
# puts "-------*--"
# puts :kassio.object_id
# puts :kassio.object_id
# puts :kassio.object_id
# puts :kassio.object_id

# simbolos são strings imutaveis
# simbolos sao utilizados para nao alocar espaco na memoria novamente, ele vai pegar o item alocado na memoria

# h = {:nome=>"curso"}
# puts h[:nome]


# CONSTANTES

NOME = "Kassio" # usar letra maiscula
puts NOME