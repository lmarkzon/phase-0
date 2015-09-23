# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: an array of strings
# Output: a randomly returned string
# If Die.new is passed an empty array, raise an ArgumentError
# Steps:


# Initial Solution

class Die
	def initialize(labels)
  		@die_class = labels

  		if @die_class = Array.new
  			raise ArgumentError.new("Error: Die.new passed an empty array")
  		end
  	end

  	def sides
  		@die_class.count
  	end

  	def roll
  		@die_class.rand
  	end
end



# Refactored Solution








# Reflection