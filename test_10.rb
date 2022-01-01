@humans = 10
@machines = 10

def luck?
  rand(0..1) == 1
end

def luck_diff
  rand(0..5)

end

def boom
  @diff = rand(1..5)
  if luck?
    @machines -= @diff
    puts "#{@diff} машин уничтожено"
  else
    @humans -= @diff
    puts "#{@diff} людей погибло"
  end
end

def numbers
  if luck?
    @machines += @diff
    puts "Роботы сотворили #{@diff} роботов"

  else
    @humans += @diff
    puts "Численность людей увеличилась на #{@diff}"
  end
end

def random_city
  case rand(1..5)
  when 1
    'Москва'
  when 2
    'Лос-Анджелес'
  when 3
    'Пекин'
  when 4
    'Лондон'
  else
    'Сеул'
  end
end

def random_sleep
  sleep rand(0.1..0.3)
end

def stats
  puts "Осталось #{@humans} людей и #{@machines} машин"
end

def event1
  puts "Запущена ракета по городу #{random_city}"
  random_sleep
  boom
  numbers

end

def event2
  puts "Применено радиоактивное оружие в городе #{random_city}"
  random_sleep
  boom
  numbers
end

def event3
  puts "Наводнение в городе #{random_city}"
  random_sleep
  boom
  numbers
end

def event4
  puts "Наступает зима"
  random_sleep
  boom
  numbers
end

def event5
  puts " #{random_city}"
  random_sleep
  boom
  numbers
end

def event6
  puts "Противник подрывается на минах городе #{random_city}"
  random_sleep
  boom
  numbers
end

def check_victory_m?
 @humans <= 0

end

def check_victory_h?
  @machines <= 0
end


loop do
  if check_victory_m?
    puts "Человечество не выжило"
    exit
  elsif check_victory_h?
    puts 'Машины не победили!'
    exit
  end

  case rand(1..6)
  when 1
    event1
  when 2
    event2
  when 3
    event3
  when 4
    event4
  when 5
    event5
  when 6
    event6
  end

  stats
  random_sleep
end
