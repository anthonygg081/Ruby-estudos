usuario = "admin"
senha = 123456

puts "Digite seu usuário:"
usuario_input = gets.chomp
puts "Digite sua senha:"    
senha_input = gets.chomp.to_i

if usuario_input == usuario && senha_input == senha
    puts "Login Realizado com sucesso!"
elsif usuario_input != usuario
    puts "Usuário não encontrado!"
elsif senha_input != senha
    puts "Senha incorreta!"
else
    puts "Dados não encontrados"
end