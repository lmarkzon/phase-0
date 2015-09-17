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
# def pad!(array, min_size, value = nil) #destructive
#   if array == 0
#     return array
#   elsif array.length >= min_size
#     return array
#   else array.length < min_size
#     diff = min_size - array.length
#     diff.times {array << value }
#     return array
#   end
#  end

# def pad(array, min_size, value = nil) #destructive
#   if array == 0
#     return array
#   elsif array.length >= min_size
#     return array
#   else array.length < min_size
#     diff = min_size - array.length
#     diff.times {array << value }
#     return array
#   end
#  end

# 3. Refactored Solution
def pad!(array, min_size, value=nil) #destructive
  if min_size == 0 or array.length >= min_size
    return array
  else (min_size - array.length).times { |array, x| array << value.to_i } 
    return array
end
end

def pad(array, min_size, value=nil) #non-destructive 
  array_1=Array.new(array)
  if min_size == 0 or array.length >= min_size
    return array_1
    else (min_size - array_1.length).times { |array, x| array_1 << value }
    return array_1
  end
end


=begin

4. Reflection

- Were you successful in breaking the problem down into small steps?
	For the most part I think we were successful, but in the beginning we missed small steps/
details that made a big difference in whether or not the code passed. At first we struggled in
wrapping our brains around figuring out what we thought we needed to do. Then once we figured out 
what we needed to do, we had a hard time figuring out how we could do it. But once we got our 
psuedocode going, we were able to understand it enough to start building our initial solution.

- Once you had written your pseudocode, were you able to easily translate it into code? 
What difficulties and successes did you have?
	Sort of, we definitely had to change our pseudocode quite a few times as we started trying 
to actually build the solution. Neither of us have a ton of experience psuedocoding so it's still
hard to get used to doing, we both just want to just jump into getting the code started. But since
we didn't spend more time psuedocoding, we got distracted with small details for large amounts of
time. We thought we knew what we needed to do, but we were missing small details here and there in 
the code that were crucial in the tests passing. The majority of our psuedocode was very useful, it
was the small things such as needing to create another variable to work with, or creating a new array
first.

- Was your initial solution successful at passing the tests? If so, why do you think that is? 
If not, what were the errors you encountered and what did you do to resolve them?
	No, our initial solution did not pass all of the tests, we kepy getting 3 errors that we 
did not know how to solve at the time. 

- When you refactored, did you find any existing methods in Ruby to clean up your code?
	

- How readable is your solution? Did you and your pair choose descriptive variable names?
	The refactored solution looks very clean and organized, I would definitely say it is readable. 

- What is the difference between destructive and non-destructive methods in your own words?
	Non-destructive methods 


