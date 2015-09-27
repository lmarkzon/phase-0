# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Jamie].
# I spent [6] hours on this challenge (at least!)

# Pseudocode

# Input: 16 digits (integers)
# Output: true or false (valid or invalid)
# Steps: 
	# Class CreditCard
		# initialize
			# set instance variable: accept 16 digits(integers) and convert to string
				# IF digits are not equal to 16
					# RAISE argument error
				# ELSE split instance variable and insert space
		# def double every other digit
			# iterate over every other digit 
				# separate even indexes and convert back to integers
				# double each element (multiply by 2)
					# untouched integers should just convert to integers?	
			# return doubles variable and split characters of doubled digits
				# join or add individual characters(of integers)
				# iterate back to one total digit
		# def checkcard
			# set total equal to 0 (counter so it will count from 0)
			# make sure digits are even
			# join? add? to get total
		# def validation
				# if total above is a multiple of 10
					# return valid or invalid (true or false)

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# Initial Solution 1 - 2 errors!!!

# class CreditCard
# 	def initialize(digits)

# 		if @digits != 16
# 			raise ArgumentError.new("Error: please enter 16 digits")
# 		else @digits = digits
# 		end
# 	end
# 	def check_card
# 		def doubles
# 			digits.each.at(-2).step(2) { |integer| p integer + integer }
# 		end

# 		def separate_then_total
# 			total = 0
# 			separated_nums = digits.to_s.split('').map! { |integertwo| integertwo.to_i }
# 			separated_nums.each { |int| total += int}
# 		end

# 		def validate
# 			total % 10 == 0
# 		end
# 	end
# end


# Initial Solution 2 - start over fresh!

# class CreditCard
# 	def initialize(digits)
# 		@digitarray = digits
    
# 		@digitarray = digits.to_s.split('')
# 		@digitarray.map!{ |value| value.to_i }

#   		if @digitarray.length != 16
#     		raise ArgumentError.new("Error: please enter 16 digits")
#   		end
# 	end

# 	def split_digits_to_array
# 		@digitarray = @digitarray.to_s.split("")
# 		@digitarray.map!{|x| x.to_i}
# 	end

# 	def doubles
# 		@digitarray.map!.with_index do |integer, index|
		
# 		if index.even?
# 			integer * 2
# 		else
# 			integer
#      	end
#     end

#      @digitarray = @digitarray.join.to_s.split('')
#      @digitarray.map! { |value| value.to_i }

#    end

# 	def sum_digits
# 		@total = 0

#      	@digitarray.each { |integer| @total = @total + integer}

# 		return @total
# 	end

# 	def check_card
# 			doubles
# ` 		sum_digits
# 		if @total % 10 == 0
# 			return true
# 		else
# 			return false
# 		end
# 	end
# end

# Refactored Solution

class CreditCard
	def initialize(digits)
		@digitarray = digits.to_s.split('').map!{ |value| value.to_i }

  		if @digitarray.length != 16
    		raise ArgumentError.new("Error: please enter 16 digits")
  		end
	end

	def split_digits_to_array
		@digitarray = @digitarray.to_s.split("").map! { |x| x.to_i }
	end

	def double_digits
		@digitarray.map!.with_index do |integer, index|
		
		if index.even?
			integer * 2
		else
			integer
     		end
    	end
   	end

	def sum_digits
		@digitarray = @digitarray.join.to_s.split('').map! { |value| value.to_i }

		@total = 0

     	@digitarray.each { |integer| @total += integer}
			return @total
	end

	def check_card
		double_digits
		sum_digits
		
		@total % 10 == 0 ? true : false
	end
end


# Reflection

# - What was the most difficult part of this challenge for you and your pair?
	# My pair and I had a really hard time with this challenge, particularly with calling methods
	# and knowing when and where to call them. We also kept getting two errors because we didn't know 
	# or realize at first that we had to turn the card number into an array, we thought we could do it
	# without it. The issue was that at no point did we decide to try to accomplish our goal in another
	# way, we just kept trying to research it or work around it, instead of using different logic instead.
	# I was able to solve our issues by putting the digits into an array, as well as find every other 
	# index number by calling the even index numbers, instead of trying to learn and implement step and at,
	# like we tried to do in the initial solution.

# - What new methods did you find to help you when you refactored?
	# I ended up using a lot of simpler built in methods that we've both used many times before, such as
	# join, to_a, to_i, to_s, map, each, and more. For this reason there was not a ton of refactoring to do,
	# besides simplifying and condensing the code a bit. The one method I did learn about for the first time
	# was with_index to find the even index numbers so we could count every other. I definitely learned a LOT
	# about ternary operators and got much more experience with them in this challenge, they pretty much do:
	# if_this_is_a_true_value ? then_the_result_is_this : else_it_is_this. They were really helpful in this
	# particular challenge. 
	
# - What concepts or learnings were you able to solidify in this challenge?
	# Once again, when pseudocoding I need to remember to include more details and information as to what it is
	# I'm exactly trying to do. I kept forgetting what my main goal of each step was and would get confused with
	# each step, but with better detailed pseudocode I would not get off-track so much. It also helped me with my
	# understanding of working with instance variables and methods, but I definitely need some more practice!
