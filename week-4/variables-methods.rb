puts 'Hello, what is your first name?'
first_name = gets.chomp

puts 'And, what is your middle name?'
middle_name = gets.chomp

puts 'Finally, what is your last name?'
last_name = gets.chomp

puts 'Nice to meet you ' + first_name + ' ' + middle_name + ' ' + last_name


puts 'Hi there, what\'s you\'re favorite number?'
fav_num = gets.chomp
other_num = fav_num.to_i + 1

puts other_num.to_s + ' is a much bigger and better number!'