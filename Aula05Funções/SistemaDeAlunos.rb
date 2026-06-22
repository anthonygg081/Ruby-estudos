def cadastar_aluno(alunos)
    print "Digite o nome do novo aluno: "
    novo_aluno = gets.chomp.strip #strip pra limpar os espaços e detectar nomes vazios
    if novo_aluno.empty?
      puts "Nome inválido."
    elsif alunos.include?(novo_aluno)
      puts "Aluno já cadastrado."
    else
     alunos << novo_aluno
     puts "#{novo_aluno} foi cadastrado(a) com sucesso."
    end
end

def listar_alunos(alunos)
      if alunos.empty?
        puts "Não há alunos cadastrados."
      else
      puts
      puts "---- Alunos Cadastrados ----"
      alunos.each_with_index do |aluno, i|
        puts " #{i + 1} - #{aluno}"
      end
      puts "-------------------"
      puts "Total: #{alunos.length} alunos"
    end
  end

def buscar_aluno(alunos)
      print "Digite o nome do aluno: "
      aluno_pesquisado = gets.chomp
  if alunos.include?(aluno_pesquisado)
        puts "Aluno encontrado!"
      else
        puts "Aluno não encontrado."
      end
end

def remover_aluno(alunos)
  if alunos.empty?
     puts "Não há alunos cadastrados."
     else
      aluno_removido = alunos.pop
      puts "O aluno #{aluno_removido} foi removido."
     end
end

def mostrar_quantidade(alunos)
  puts "Quantidade de alunos: #{alunos.length}"
end

def mostrar_menu()
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
    cadastar_aluno(alunos)
  elsif opcao == 2
    listar_alunos(alunos)
  elsif opcao == 3
      buscar_aluno(alunos)
  elsif opcao == 4
     remover_aluno(alunos)
  elsif opcao == 5
    mostrar_quantidade(alunos)
  elsif opcao == 6
    puts "Saindo..."
  else
    puts "Opção inválida."
  end
end
end

mostrar_menu()