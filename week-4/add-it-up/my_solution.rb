# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Jamie.

# 0. total Pseudocode
# make sure all pseudocode is commented out!
	
# define total as 0 
# take each element in the argument to the method and add them together
# return sum

# 1. total initial solution

#def total(array)
	#total = 0
		#array.each { |i| total += i }
	#return total
#end


# 3. total refactored solution
#def total(array)[0]
# 	array.each { |i| total += i }
# end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: strings
# Output: each object in a sentence
# Steps to solve the problem: define, join, and return output


# 5. sentence_maker initial solution
#def sentance_maker(array)
	#array.join
	#return sentence_maker
#end

# 6. sentence_maker refactored solution
def sentence_maker(array)
    array.join(" ").capitalize + "."
end

