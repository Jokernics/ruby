dict = {,
  'cat' => "'кот', 'кошка'",
  'dog' => 'собака',
  'girl' => 'девушка'
}

print 'Введите слово: '
input = gets.chomp

puts "Перевод слова: #{dict[input]}"




