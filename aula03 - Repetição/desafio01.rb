opçao = 0

puts "Olá! Informe seu nome:"
nome = gets.chomp

while opçao != 4
    puts
    puts "============"
    puts "MENU"
    puts "============"
    puts
    puts "Escolha uma opção:"
    puts "1.Dizer Olá"
    puts "2.Mostrar um número aleatório entre 1 e 100"
    puts "3.Mostrar seu nome"
    puts "4.Sair"

    opçao = gets.chomp.to_i

    if opçao == 1
        puts "Olá"
    elsif opçao == 2
        puts rand(1..100)
    elsif opçao == 3
        puts nome
    elsif opçao == 4
        puts "Saindo..."
    else 
        puts "Opção Inválida!"
    end
end
