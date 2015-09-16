# Pad an Array

# I worked on this challenge [with: Irina]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode




# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length == 0
    return array
  elsif array.length >= min_size
    return array
  else array.length < min_size
    return array_1[array, (min_size - array.length)*value]
  end
end

#def pad(array, min_size, value = nil) #non-destructive
  # Your code here
#end


# 3. Refactored Solution



# 4. Reflection