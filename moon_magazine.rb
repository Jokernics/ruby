earth = {
    soccer_ball: 410, #футбольный
    tennis_ball: 58,
    golf_ball: 45
}

moon = {
    soccer_ball: 410/6,
    tennis_ball: 58/6,
    golf_ball: 45/6
}

#Лунный магазин
puts 'Добро пожаловать в лунный магазин'
loop do
puts 'Какое количество футбольных мячей хотите приобрести? '
soccer_ball = gets.chomp.to_i
puts 'Какое количество теннисных мячей хотите приобрести? '
tennis_ball = gets.chomp.to_i
puts 'Какое количество гольф мячей хотите приобрести? '
golf_ball = gets.chomp.to_i
puts <<~here
Общий весь товаров в корзине:
Кулено футбольных мячей #{soccer_ball}, их весь составляет: #{a = soccer_ball*moon[:soccer_ball]}
Кулено теннисных мячей #{tennis_ball}, их весь составляет: #{b = tennis_ball*moon[:tennis_ball]}
Кулено гольф мячей #{golf_ball}, их весь составляет: #{c = golf_ball*moon[:golf_ball]}
Общий вес составил: #{f=a+b+c}
Так же эти товары бы весили на Земле: #{f*6}

here
print 'Хотите уйти? (y/n) '
entrance = gets.chomp.downcase
break if entrance == 'y'
end

