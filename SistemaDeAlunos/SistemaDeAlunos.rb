opcao = 0
alunos = []

while opcao != 6
  puts
  puts "=================="
  puts "SISTEMA DE ALUNOS"
  puts "=================="
  puts

  puts "1 - Cadastrar aluno"
  puts "2 - Listar alunos"
  puts "3 - Buscar aluno"
  puts "4 - Remover último aluno"
  puts "5 - Mostrar quantidade de alunos"
  puts "6 - Sair"
  puts

  print "Escolha uma opção: "
  opcao = gets.chomp.to_i

  if opcao == 1
    print "Digite o nome do novo aluno: "
    novoAluno = gets.chomp
    if novoAluno.empty?
      puts "Nome inválido."
    elsif alunos.include?(novoAluno)
      puts "Aluno já cadastrado."
    else
     alunos << novoAluno
     puts "#{novoAluno} foi cadastrado com sucesso."
    end
      
  elsif opcao == 2
      if alunos.empty?
        puts "Não há alunos cadastrados."
      else
      puts "---- Alunos Cadastrados ----"
      alunos.each_with_index do |aluno, i|
        puts " #{i + 1} - #{aluno}"
      end
      puts "-------------------"
      puts "Total: #{alunos.length} alunos"
    end
  elsif opcao == 3
      print "Digite o nome do aluno: "
      alunoPesquisado = gets.chomp
      if alunos.include?("#{alunoPesquisado}")
        puts "Aluno encontrado!"
      else
        puts "Aluno não encontrado."
      end
  elsif opcao == 4
     if alunos.empty?
      puts "Não há alunos cadastrados."
     else
      alunos.pop
      puts "Último aluno removido."
     end
  elsif opcao == 5
     puts "Quantidade de alunos: #{alunos.length}"
  elsif opcao == 6
    puts "Saindo..."
  else
    puts "Opção inválida."
  end
end