payment = 500000
pay_in_month = payment / 30
total = 0

30.times do |i|

    
    procents = (payment * 0.04).to_i
    total = procents + total
    puts "Год #{i+1}"
    puts "Ежегодный платеж равен 16666 $"
    puts "Осталось платить: #{payment}"
    puts "Надо заплатить проценты за этот год: #{procents}"
    payment = payment - pay_in_month
end
puts "ВСЕГО ПРОЦЕНТОВ НАКАПАЛО: #{total}"
