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

=begin

Reflection :

- How do you define a local variable? 

local_variable = "new local variable goes here"

- How do you define a method?

	def method(my argument)
		method
	end

		or
	def method argument
		method
	end

- What is the difference between a local variable and a method?

Local variables store information and methods tell the 'information' what to do.
I like the comparison in pine's book to nouns and verbs, how the variable is the
noun and the method is the verb or action work and tells it what to do.

- How do you run a ruby program from the command line?
You type in the following:

ruby file_name.rb

- How do you run an RSpec file from the command line?

rspec file_name.rb

- What was confusing about this material? What made sense?

Nothing about this material was really confusing as much as it just takes practice
and memorization over time to get used to it. The only thing I struggled with was
making sure all my file names were correct, adding an apostraphe to my strings, and
at first I kept forgetting to add chomp!