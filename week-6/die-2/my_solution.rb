# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: an array of strings
# Output: a randomly returned string
# If Die.new is passed an empty array, raise an ArgumentError
# Steps:
	# def initialize
		# store the argument "labels" in instance variable
		# IF class passed empty array
			# RAISE an argument error
	# def sides
		# call on class
		# count number of sides
	# def roll
		# randomly selects and returns one of the labels


# Initial Solution

# class Die
# 	def initialize(labels)
#   		@die_sides = labels

#   		if @die_sides == []
#   			raise ArgumentError.new("Error: no labels")
#   		end
#   	end

#   	def sides
#   		@die_sides.count
#   	end

#   	def roll
#   		@die_sides.sample
#   	end
# end



# Refactored Solution

class Die
	def initialize(labels)
  		@die_sides = labels

  		if @die_sides == []
  			raise ArgumentError.new("Error: no labels")
  		end
  	end

  	def sides
  		@die_sides.count
  	end

  	def roll
  		@die_sides.sample
  	end
end



# Reflection

# - What were the main differences between this die class and the last one you created in terms of implementation? Did you 
# need to change much logic to get this to work?
	# There were barely any differences between this die class challenge and the previous one. Instead of working with number of
	# sides we are working with the labels of the sides. 

# - What does this exercise teach you about making code that is easily changeable or modifiable? 
	# Well I guess it teaches me that code CAN be made in a way that is easily changeable or modifiable to use in other instances.

# - What new methods did you learn when working on this challenge, if any?
	# When looking through the ruby docs I found the sample method, which randomly selects 

# - What concepts about classes were you able to solidify in this challenge?
	# That 
