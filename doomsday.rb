@humans = 10
@machines = 10

def luck?
	rand(0..1) == 1
end

def boom
  diff = rand(1..5)
  if luck?
    @machines -= diff
    puts "#{diff} машин уничтожено"
  else
    @humans -= diff
    puts "#{diff} людей погибло"
  end
end

def random_city
  case dice = rand(1..5)
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
  sleep rand(0.3..1.5)
end

def stats
  puts "Осталось #{@humans} людей и #{@machines} машин"
end

def event1
  puts "Запущена ракета по городу #{random_city}"
  random_sleep
  boom
end

def event2
  puts "Применено радиоактивное оружие в городе #{random_city}"
  random_sleep
  boom
end

def event3
  puts "Группа солдат прорывает оборону противника в городе #{random_city}"
  random_sleep
  boom
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

  case dice = rand(1..3)
  when 1
    event1
  when 2
    event2
  when 3
    event3
  end

  stats
  random_sleep
end
