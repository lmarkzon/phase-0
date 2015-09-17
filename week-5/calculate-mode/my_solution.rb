# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What are the steps needed to solve the problem: 
#input: array of numbers or strings 
# - create empty hash
# - put array into hash
# - group hash by key(object/element) and value(frequency)
# - display keys with highest values (or equal to the highest value)
#output: single element array of the most frequent values
#prints every key of every value that's equal to the highest_freq 


# 1. Initial Solution
# def mode(array)
#   	freq_hash = array.group_by {|x| x}
#   	result_hash = {}

#   	freq_hash.each_pair do |key, value|
#   		value_new = value.count

#   	result_hash.store(key, value_new)
# end
# 	highest_freq = result_hash.max_by {|key, value| value}[1] 
	#tells us which value is highest 
# 	final_array = []

# 	result_hash.each do |key, value|
# 		if value == highest_freq
# 			final_array.push(key)
# 	end
#   end
#   return final_array
# end

# 3. Refactored Solution
def mode(array)
  	result_hash = {}
  	final_array = []

  	freq_hash = array.group_by {|x| x}
  		freq_hash.each_pair do |key, value|
  			result_hash.store(key, value.count)
end
	result_hash.each do |key, value|
		if value == result_hash.max_by {|key, value| value}[1] 
			final_array.push(key)
	end
  end
  final_array
end



# 4. Reflection