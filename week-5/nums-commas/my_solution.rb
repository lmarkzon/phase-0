# Numbers to Commas Solo Challenge

# I spent [4] hours on this challenge.

# Complete each step below according to the challenge 
#directions and include it in this file. Also make sure 
#everything that isn't code is commented in the file.

# 0. Pseudocode

# What is the input: a positive integer without commas
# - convert positive integer to a string
# - reverse string (so it counts from the end of the integer)
# - iterate each character into array
# - index? increment each time loop goes
# - empty array of output?
# - count every 3 numbers
# -  add character and comma
# - convert array to final string
# - reverse output string?
# What is the output: string of integers separated by commas correctly

# 1. Initial Solution

def separate_comma(integer)
  index = 1
  output_string = ("")
  integer.to_s.reverse.each_char do|character|
    if index <= 2
      index = index + 1
      output_string = output_string + character
    else
      index = 1
      output_string = output_string + character + (",")
    end
  end
  output_string.chomp!(",")
  return output_string.reverse
end


# 2. Refactored Solution




# 3. Reflection

	
# - What was your process for breaking the problem down? What different approaches did you consider?
# I think I changed my original psuedocode about 5 times, I kept changing my mind on how I wanted to
# approach the solution, trying to predict what was going to happen. The first 2 hours I was 
# convinced I needed to split the array, then after looking in the ruby docs forever I found the
# each_char 

# - Was your pseudocode effective in helping you build a successful initial solution?
# For the most part it helped me get started, 

# - What Ruby method(s) did you use when refactoring your solution? What difficulties did you have 
# implementing it/them? Did it/they significantly change the way your code works? If so, how?
# For the longest time I got down to 2 errors and could not figure out how to fix it. 

# - How did you initially iterate through the data structure?


# - Do you feel your refactored solution is more readable than your initial solution? Why?
