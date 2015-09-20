# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge 
#directions and include it in this file. Also make sure 
#everything that isn't code is commented in the file.

# 0. Pseudocode

# What is the input: a positive integer
# - convert positive integer to a string
# - IF string has less than or equal to 3 characters
	# - RETURN string
# - ELSE
	# - reverse string (so it counts from the end of the integer
		# every 3 characters)
	# - iterate over each character
	# - split and insert comma every 3 characters
	# - stop when less than 3 characters remaining in the string
# What is the output: string of integers separated by commas



# 1. Initial Solution
def separate_comma(integer)
	output_num = integer.to_s
	if output_num.length <= 3
		return output_num
	else output_num.reverse.split(" ").each { |character}
    end
end



# 2. Refactored Solution




# 3. Reflection