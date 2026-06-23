puts "Olá, mundo!"

#interpolação de string
nome = "Anthony"
puts "Olá, #{nome}!"
#pegando dados do usuário
puts "Qual é o seu nome?"
nome_usuario = gets.chomp
puts "Olá, #{nome_usuario}!"
#convertendo string para inteiro
puts "Digite um número:"    
numero = gets.chomp.to_i
puts "O número digitado foi: #{numero}"