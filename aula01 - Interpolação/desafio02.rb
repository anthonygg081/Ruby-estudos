puts "Qual é o seu nome?"
nome = gets.chomp
puts "Quantos anos você tem?"
idade = gets.chomp.to_i
puts "Qual cidade você mora?"
cidade = gets.chomp
puts "Qual o seu curso?"
curso = gets.chomp
puts "Qual é sua linguagem favorita?"
linguagem = gets.chomp
puts "================================="
puts "Resumo".upcase
puts "================================="
puts "Nome:#{nome}"
puts "Idade #{idade} anos"
puts "Cidade: #{cidade}"
puts "Curso: #{curso}"
puts "Linguagem favorita: #{linguagem}"
puts "Seja bem-vindo ao Ruby!"