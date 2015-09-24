# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Jamie].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 16 digits
# Output: true or false
# Steps: 
	# Class CreditCard
		# initialize
			# create class: initialize to accept 16 digits
				# IF input is not equal to 16
					# RAISE argument error
		# def double every other digit
			# iterate over every other number 
				# starting with 2nd to last index
				# double each element as directed above
			# sum all digits and separate doubled digits
				# (find and?) separate doubled digits
				# add all digits
			# check validation
				# if sum above is a multiple of 10
					# return true or false (valid or invalid)

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
	def initialize(digits)
		if @digits != 16
			raise ArgumentError.new("Error: please enter 16 digits")
		else @digits = digits
		end
	end

	def doubles
		digits.each.at(-2).step(2) { |integer| p integer + integer }
	end

	def separate_then_sum
		total = 0
		separated_nums = digits.to_s.split('').map! { |integertwo| integertwo.to_i }
		separated_nums.each { |int| total += int}
	end

	def validate
		total % 10 == 0
	end
end



# Refactored Solution








# Reflection