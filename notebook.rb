arr = []

loop do
  print 'Введите имя и телефон человека: '
  entry = gets.chomp
  break if entry.empty?
  arr << entry

end

puts "Ваша записная книжка:"

arr.each do |element|
  puts element
end
