def char(str)
    require 'set'
    set = Set.new
    str.each_char do |word|
        if set.size == 26
            break
        elsif word >='a' && word <='z'
            set.add(word)
        end
    end
    if set.size == 26
        puts 'все верно'
    else puts 'все плохо'
    end
end

char('quick brown fox jumps over the lazy dog')

