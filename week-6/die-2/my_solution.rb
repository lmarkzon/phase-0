# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself ].
# I spent [1] hours on this challenge.

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
	# There were barely any differences between this die class challenge and the previous one. For initialize, instead of working 
	# with number of sides like the previous challenge, we are working with the labels of the sides. In this one we also checked 
	# for an empty array as input instead of checking the number of sides, to raise an Argument error. For the sides method, we
	# just had to add count in this challenge and we didn't have to in the previous one. Lastly, for defining the roll method,
	# in the previous challenge we were working with integers so to pick a random side I used rand with a range of 1 and the 
	# number of sides. But since we were working with "labels" in this challenge I knew I neeed a different method to ranomly 
	# select a character, and that was when I found sample. 

# - What does this exercise teach you about making code that is easily changeable or modifiable? 
	# Well I guess it teaches me that code CAN be made in a way that is easily changeable or modifiable to use in other instances. 
	# It reminds me how we made html blog templates, that way the "bulk" of the original structure is done, and you can fill in 
	# everything else as you want for that one use. By making your code as clean, simple, and readable as possible, you are able
	# to easily change or modify parts of it for use in other ways.  

# - What new methods did you learn when working on this challenge, if any?
	# When looking through the ruby docs I found the sample method, which chooses a random element or you can select the number of
	# elements you want it to select, from an array. This elements are selected by using random/unique indexes into the array to
	# make sure that the element isn't repeated, unless the array already contained duplicate elements. If the array is empty, the
	# first form returns nil and the second returns an empty array. It can also be used as a random number generator which is 
	# useful! I also used count and new, but I'm already familiar with both of those and have used them many times.

# - What concepts about classes were you able to solidify in this challenge?
	# That when selecting methods to use for objects/classes, such as strings and integers, it is more efficient to use methods
	# that work for both integers and strings. Since I used methods in my first die class that only worked with integers, I had 
	# to make more changes to make it work for this challenge. I also learned that I should always check the ruby-docs for 
	# methods that could enhance my code and work for multiple instances.
	 
