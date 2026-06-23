def cadastrar_aluno(alunos)
    print "Digite o nome do novo aluno: "
    nome = gets.chomp.strip #strip pra limpar os espaços e detectar nomes vazios
    if nome.empty?
      puts "Nome inválido."
    elsif
      aluno_existente = alunos.find do |aluno|
      aluno[:nome] == nome
      if aluno_existente == true 
      puts "Aluno já cadastrado."
      end
      end
    else
      print "Digite a idade do novo aluno: "
      idade = gets.chomp.to_i
      print "Digite o curso do novo aluno: "
      curso = gets.chomp.strip

      novo_aluno = {
          nome: nome,
          idade: idade,
          curso: curso
        }

      alunos << novo_aluno
      puts "#{novo_aluno[:nome]} foi cadastrado(a) com sucesso."
      puts "#{novo_aluno[:nome]} | #{novo_aluno[:idade]} | #{novo_aluno[:curso]}"
    end
end

def listar_alunos(alunos)
  total_alunos = 0
      if alunos.empty?
        puts "Não há alunos cadastrados."
      else
      puts
      puts "---- Alunos Cadastrados ----"
      alunos.each_with_index do |aluno, i|
        if aluno[:idade] >= 18 
          puts " #{i + 1} - #{aluno[:nome]} | #{aluno[:idade]} | #{aluno[:curso]}"
          total_alunos += 1
        end
      end
      puts "-------------------"
      puts "Total: #{total_alunos} alunos"
    end
  end

def buscar_aluno(alunos)
    print "Digite o nome do aluno: "
    aluno_pesquisado = gets.chomp.strip
      aluno_encontrado = alunos.find do |aluno| # find procura a chave dentro do hashe
      aluno[:nome] == aluno_pesquisado 
        end 
        if aluno_encontrado
        puts "Aluno encontrado!"
        puts "Nome: #{aluno_encontrado[:nome]}"
        puts "Idade: #{aluno_encontrado[:idade]}"
        puts "Curso: #{aluno_encontrado[:curso]}"
      else
        puts "Aluno não encontrado."
      end
end

def remover_aluno(alunos)
  if alunos.empty?
     puts "Não há alunos cadastrados."
     else
      aluno_removido = alunos.pop
      puts "O aluno - #{aluno_removido[:nome]} | #{aluno_removido[:idade]} | #{aluno_removido[:curso]} - foi removido."
     end
end

def mostrar_quantidade(alunos)
  puts "Quantidade de alunos: #{alunos.length}"
end

def mostrar_menu()
  alunos = []
  opcao = 0
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
    cadastrar_aluno(alunos)
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