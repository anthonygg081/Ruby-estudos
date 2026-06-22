puts "Qual foi sua nota?"
nota = gets.chomp.to_f
puts "Qual foi sua frequência?"
frequencia = gets.chomp.to_i

if nota >= 7 && frequencia >= 75
    puts "Parabéns, você passou!"
elsif nota >= 5 && nota <=6.9 && frequencia >= 75
    puts "Você está de recuperação."
elsif frequencia < 75
    puts "Você foi reprovado por falta."
else
    puts "Você foi reprovado."
end