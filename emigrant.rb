puts "Есть ли у вас высшее образование ? (y/n)"
  education = gets.chomp.downcase
puts "Есть ли у вас опыт работы программистом? (y/n)"
  experience = gets.chomp.downcase
puts "Опыт работы больше трех лет? (y/n)"
  experience_range = gets.chomp.downcase

if education == "y" || experience == "y" || experience_range == "y"
  score = 1

end

if (education == "y" && experience == "y") || (experience_range == "y" && education == "y") || (experience_range == "y" && experience == "y")
  score = 2
else
 score = 1

end

if score == 2 || score == 3
  puts "Добро пожаловать в Америку!"
else puts "idite nahui"

end
