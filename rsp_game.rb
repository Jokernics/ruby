print "(К)амень, (Н)ожницы, (Б)умага? "
pc = ['камень', 'ножницы', 'бумагу']
def animation
  1.upto(3) { |i|
    print "#{i}"
    sleep rand(0.1..0.5)}
end
loop do
    human_choice = gets.chomp.downcase
    break if human_choice.empty?
    pc = ['камень', 'ножницы', 'бумагу']
    pc_choice = pc[rand(0..2)]
    animation
    puts "\nКомпюхтер достает #{pc_choice}"

    if human_choice == 'к' && pc_choice == 'ножницы'
        puts 'Вы победили, камень бьет ножницы'
    elsif human_choice == 'к' && pc_choice == 'бумагу'
        puts 'Вы проиграли, бумага накрыла камень'
    elsif human_choice == 'н' && pc_choice == 'камень'
        puts 'Вы проиграли, камень бьет ножницы'
    elsif human_choice == 'н' && pc_choice == 'бумагу'
        puts 'Вы выиграли, ножницы разрезали бумагу'
    elsif human_choice == 'б' && pc_choice == 'камень'
        puts 'Вы выиграли, бумага накрыла камень'
    elsif human_choice == 'б' && pc_choice == 'ножницы'
        puts 'Вы проиграли, ножницы бьют бумагу'
    else
        puts 'Ничья'
    end

end


