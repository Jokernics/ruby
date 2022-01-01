string = '1 2 3 4 5 6 7 8 9 10'
    puts string.split.map(&:to_i).select{|x| x%3==0 }
