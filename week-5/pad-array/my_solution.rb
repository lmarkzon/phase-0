# Pad an Array

# I worked on this challenge [with: Irina]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# 1. Define method pad (array, minimum size, padding): NON-DESTRUCTIVE
    #If array length = 0
      #return new array = copy of array    
    #Elsif array length < minimum size
      # return new array = array copy + added pad value up to min size
    #ELSIF array length >= minimum size 
      #return new array = copy of array
# 2. Define method pad! (array, minimum size, padding): DESTRUCTIVE
    #if array length = 0   
      #return same
    #elsif array length < minimum size
      # return modifed array with added pad value up to min size
    #Else array length >= minimum size 
      #return the same array
# 3. Define array: strings


# What is the input? An array, a min-size, and "padding b"
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array == 0
    return array
  elsif array.length >= min_size
    return array
  else array.length < min_size
    diff = min_size - array.length
    diff.times {array << value }
    return array
  end
 end

def pad(array, min_size, value = nil) #destructive
  if array == 0
    return array
  elsif array.length >= min_size
    return array
  else array.length < min_size
    diff = min_size - array.length
    diff.times {array << value }
    return array
  end
 end

# 3. Refactored Solution



# 4. Reflection