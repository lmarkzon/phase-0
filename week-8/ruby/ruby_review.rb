# Release 1: Complete the Challenge

# FizzBuzz Super Edition
# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
# input: an array
# def method super fizzbuzz
	# iterate over each number in the array
		# IF multiple of 3 
			# replace with the string "Fizz"
		# ELSIF multiple of 5
			# replace with the string "Buzz"
		# ELSE multiple of 15
			# replace with the string "FizzBuzz"
# output: "fizzbuzzed" Array


# Initial Solution
# def super_fizzbuzz(array)
# 	array.map do |number|
# 		if number % 3 == 0 && number % 5 != 0 
# 			p 'Fizz' 
# 		elsif number % 5 == 0 && number % 3 != 0
# 			p 'Buzz' 
# 		elsif number % 15 == 0
# 			p 'FizzBuzz' 
# 		else
# 			p number
# 		end
# 	end
# end

# Refactored Solution
def super_fizzbuzz(array)
	array.map do |number|
	case 
	    when number % 15 == 0 then 'FizzBuzz'
	    when number % 3  == 0 then 'Fizz'
	    when number % 5  == 0 then 'Buzz'
	    else number
		end
	end
end

# Release 2: Reflect
# - What concepts did you review or learn in this challenge?
	# I really need a refresh and review on my Ruby skills, especially since learning
	# JavaScript, the two have kind of just mushed together in my brain. I honestly
	# got a solid review of the basic syntax and semantics of Ruby, such as if/else
	# statements, and when...then... statements. It was also a nice review of iterating
	# and looping over an array in Ruby.
# - What is still confusing to you about Ruby?
	# I've somehow forgotten the different between puts/p/print, so is definitely one
	# thing I need a solid review and practice with. There is nothing specific in Ruby
	# that I'm not understanding in particular, I just need more general practice and
	# experience with it. I only did one of the challenges this time, but my goal is to
	# to the rest of them the last week of Phase-0. I focused more on reviewing the syntax
	# and terms in Ruby this week.
# - What are you going to study to get more prepared for Phase 1?
	# I'm just going to go back and review all of our previous quizzes and challenges from
	# prior weeks. In addition to also doing the code academy tracks of each language, I
	# am also making cheat sheets for each language to help me work more efficiently,
	# plus creating them will also be a good study method. I just need more work creating
	# and defining methods and functions in Ruby (and JS).