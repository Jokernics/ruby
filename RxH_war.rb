@arr1 = Array.new(10, 100)
@arr2 = Array.new(10, 100)


def sleeper
    sleep rand(1..2.75)
end

def attack(arr)
    sleeper
    damage = rand(51..100)
    i = rand(0..9)
    if (arr[i] - damage) >= 1
        arr[i] -= damage
        puts "Робот #{i+1} получил ранение, осталось #{arr[i]} HP"
    elsif (arr[i] - damage) <= 0 && arr[i] > 0
        puts "Робот #{i+1} уничтожен"
        arr[i] = 0
    elsif arr[i] == 0
        puts "Промазали"
    end

    sleeper
end

#Проверка победы

def victory?
    robots_left1 = @arr1.count { |w| w >= 1 }
    robots_left2 = @arr2.count { |w| w >= 1 }
    if robots_left1 == 0
        puts "Команда 2 победила, в команде осталось #{robots_left2} товарищей"
        return true
    end

    if robots_left2 == 0
        puts "Команда 1 победила, в команде осталось #{robots_left1} товарищей"
        return true
    end

end

#Статистика
def stats
    cn1 = @arr1.count { |x| x >= 1} #количество живых роботов
    cn2 = @arr2.count { |x| x >= 1} #количество живых роботов
    puts "1-ая команда: #{cn1} #{@arr1} роботов в строю"
    puts "2-ая команда: #{cn2} #{@arr2} роботов в строю"
end

loop do
    puts 'Первая команда наносит удар....'
    attack(@arr2)
    stats
    exit if victory?
    sleeper
    puts

    puts 'Вторая команда атакует'
    attack(@arr1)
    stats
    exit if victory?
    sleeper
    puts
end

