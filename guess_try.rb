number = rand(1..10)
print 'Привет! Я загадал число от 1 до 10, попробуйте угадать: '


0.upto(3) do |i|


input = gets.to_i
if input == number
puts 'Правильно!'
exit
else print "Неправильно, попробуйте еще раз, try #{i+1}: "

end

end



