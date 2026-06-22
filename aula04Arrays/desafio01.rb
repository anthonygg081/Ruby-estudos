opçao = 0 
produtos = []

while opçao != 4
    puts
    puts "MENU"
    puts
    puts "1 - Adicionar produto"
    puts "2 - Ver lista"
    puts "3 - Remover último produto"
    puts "4 - Sair"
    print "Escolha uma opção: "
    opçao = gets.chomp.to_i
    puts
    
    if opçao == 1
        puts "Digite o produto:"
        novo_produto = gets.chomp
        produtos << novo_produto
        puts "\n#{novo_produto} foi cadastrado."
    elsif opçao == 2 
        if produtos.empty? 
            puts "Nenhum produto cadastrado."
        else  
        # produtos.each do |produto|
        #   puts produto
          produtos.each_with_index do |produto, i|
            puts "#{i+1} - #{produto}"
        end
    end
    elsif opçao == 3
        if produtos.empty?
            puts"Nenhum produto cadastrado."
        else
       produto = produtos.pop
        puts"O produto #{produto} foi removido"
        end
    elsif opçao  == 4 
        puts "Saindo..."
    else
        puts "Opção Inválida."
    end
end