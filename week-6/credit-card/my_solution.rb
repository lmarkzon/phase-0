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
		@digits = digits

		raise ArgumentError.new("Error: please enter 16 digits") unless @digits == 16
	end

	def check_card
		@split = @digits.to_s.split("")
		@digits.map! { |character| character.to_i }

		@separated_nums = @digits.map!.at(-2).step(2) { |integer| p integer + integer }

		@total = @separated_nums.each { |int| @total += int}
		
		@total % 10 == 0? true : false
	end
end

# test1 = CreditCard.new(1234567891011121)


# Refactored Solution








# Reflection