puts "Есть ли у вас высшее образование ? (y/n)"
  education = gets.chomp.downcase
puts "Есть ли у вас опыт работы программистом? (y/n)"
  experience = gets.chomp.downcase
puts "Опыт работы больше трех лет? (y/n)"
  experience_range = gets.chomp.downcase

if education == "y"
  x = 1
  else score x = 0
end

if experience == "y"
  y = 1
else
 y = 0

end

if experience_range == "y"
  z = 1
else z = 0
end

score = x + y + z
if score == 2 || score == 3
  puts "Добро пожаловать в Америку!"
else puts "idite nahui"

end
