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
=begin

- Which data structure did you and your pair decide to implement and why?
	We decided to use a hash to organize our data structure because we had key/value pairs
that we wanted to be able to call/return using names, opposed to index numbers in an array. 
We also wanted to use a hash because we saw the hint on the challenge so we took that as a 
hint that we should be uses hashes opposed to an array. 

- Were you more successful breaking this problem down into implementable pseudocode 
than the last with a pair? 
	Again, we had some issues getting started with the psuedocode since we weren't really
sure how to breakdown the problem in the first place. We kept going back and forth between
psuedocoding and just trying to solve the problem, neither of us have a ton of experience
psuedocoding at this point. Once we really broke down what we needed to do within the psuedo-
code we were really able to break down each step into a solution. We realized that we needed
to be adding the small details to the psuedocode in order to really be able to break it down.

- What issues/successes did you run into when translating your pseudocode to code?
	We weren't familiar with all of the methods or where to even begin even when we finished
our psuedocode, so it was very difficult for us to convert in the beginning. We realized that
we didn't have enough details in the psuedocode to help us decide how we wanted to accomplish
each piece of psuedocode. We should have made psuedocode for each step in the process to have
an easier time coming up with the solution.

- What methods did you use to iterate through the content? Did you find any good ones 
when you were refactoring? Were they difficult to implement?
	We used a lot of methods, we used store, group_by, max_by, push, each, count, and more. The
ones we hadn't used before were harder to implement into the code, but we just had to do some
research on how to implement them into the method. Store and Push were the newest to me, therefore
hardest to implement.
