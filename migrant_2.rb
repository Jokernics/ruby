puts "Есть ли у вас высшее образование ? (y/n)"
  education = gets.chomp.downcase
puts "Есть ли у вас опыт работы программистом? (y/n)"
  experience = gets.chomp.downcase
puts "Опыт работы больше трех лет? (y/n)"
  experience_range = gets.chomp.downcase
  score = 3
if education == "y"
  score = score
else score = score - 1
end

if experience == "y"
   score = score
else score = score - 1

end

if experience_range == "y"
  score = score
else score = score - 1
end


if score == 2 || score == 3
  puts "Добро пожаловать в Америку!"
else puts "idite nahui"

end
