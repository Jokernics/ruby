def phone_to_number(phone)
 phone.downcase.each_char { |i|
  if i == 'a' || i == 'b' || i == 'c'
    print '2'
  elsif i == 'd' || i == 'e' || i == 'f'
    print '3'
  elsif i == 'g' || i == 'h' || i == 'i'
    print '4'
  elsif i == 'j' || i == 'k' || i == 'l'
    print '5'
  elsif i == 'm' || i == 'n' || i == 'o'
    print '6'
  elsif i == 'p' || i == 'q' || i == 'r' || i == 's'
    print '7'
  elsif i == 't' || i == 'u' || i == 'v'
    print '8'
  elsif i == 'w' || i == 'x' || i == 'y' || i == 'z'
    print '9'
  else
    print i
  end
}
end
phone_to_number('555MATRESS')

