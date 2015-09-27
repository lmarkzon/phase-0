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
# 		@digitarray = @digitarray.to_s.split("").map!{|x| x.to_i}
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

#      	@digitarray.each { |integer| @total += integer}

# 		return @total
# 	end

# 	def check_card
# 		doubles
# 		sum_digits
# 		@total % 10 == 0? true : false
# 	end
# end

# Refactored Solution

class CreditCard
	def initialize(digits)
		@digitarray = digits.to_s.split('')
		@digitarray.map!{ |value| value.to_i }

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

     @digitarray = @digitarray.join.to_s.split('').map! { |value| value.to_i }

   end

	def sum_digits
		@total = 0

     	@digitarray.each { |integer| @total += integer}
			return @total
	end

	def check_card
		double_digits
		sum_digits
		@total % 10 == 0? true : false
	end
end


# Reflection

# - What was the most difficult part of this challenge for you and your pair?
	# My pair and I had a really hard time with this challenge, particularly with calling methods
	# and knowing when and where to call them. We kept getting two errors...

# - What new methods did you find to help you when you refactored?

# - What concepts or learnings were you able to solidify in this challenge?

