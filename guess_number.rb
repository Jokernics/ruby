number = rand(1..10)
print 'Привет! Я загадал число от 1 до 1 000 000, попробуйте угадать: '


loop do


input = gets.to_i
if input > number
  print "Искомое число меньше вашего ответа, попробуйте снова: "
elsif input < number
  print 'Искомое число больше вашего ответа, попробуйте снова: '

elsif input == number
  puts 'Правильно!'
exit
end
end



