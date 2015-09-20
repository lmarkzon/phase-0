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
  # - empty array of output?
# - index counter? to go up one each time loop runs
# - count every 3 numbers?
# - IF index is 2 numbers or less
  # - just add character with output
# - ELSE
  # -  add character and comma
# - convert array to final string
  # - extra comma on ends remove? chomp?
# - RETURN output string (reverse back?)
# What is the output: string of integers separated by commas correctly

# 1. Initial Solution

# def separate_comma(integer)
#   index = 1
#   output_string = ("") #output is a string so needs to be in quotes!
#   integer.to_s.reverse.each_char do|character|
#     if index < 2 || index = 2
#       index = index + 1
#       output_string = output_string + character #adds character only
#     else
#       index = 1
#       output_string = output_string + character + (",") #add character and comma
#     end
#   end
#   output_string.chomp(",") # for some reason is causing 2 errors - ?
#   return output_string.reverse #need to reverse the string back!
# end


# 2. Refactored Solution
def separate_comma(integer)
  index = 1
  output_string = ("")
  integer.to_s.reverse.each_char do |character|
    if index <= 2
      index += 1
      output_string += character
    else
      index = 1
      output_string += character + (",")
    end
  end
  output_string.chomp!(",")
  return output_string.reverse
end



# 3. Reflection
# - What was your process for breaking the problem down? What different approaches did you consider?
# I think I changed my original psuedocode at least 5 different times, I kept changing my mind on how I wanted to
# approach the solution, trying to predict what was going to happen. I wrote down what I needed to do how a sheet of
# paper and used 10,000 as a test number to try to solve with. Once I did a practice run, I broke down each step that 
# I did and why I did it and wrote it down. This allowed me to get started with my psuedocode, but then I started to
# question how I was going to do this and what methods would be most efficient. I kept going back and forth between 
# using the each and split methods to iterate, and even had trouble deciding if I wanted to do it by the length of 
# the strings or use my index approach. All I knew for sure, was that I need to convert it to a string and reverse it,
# then count every 3 characters to insert a comma depending on the nunber of characters in the string.

# - Was your pseudocode effective in helping you build a successful initial solution?
# For the most part yes, it was very helpful. I currently have a love-hate relationship with psuedocoding, hate because
# I am still very unexperienced with it and find it kind of confusing. Plus, I have a bad new-coder habit of just
# wanting to jump into defining a method and building a solution. On the other hand, the more recent practice that
# I've gotten from using it has really improved ruby knowledge, as well as helped me build more efficient and logical
# methods/solutions. With the past few challenges, I have spent most of my time on psuedocoding, allowing me to fly
# through creating my initial solution. When you know exactly what you need the method to do and how to do it, it's
# so much easier to decide what built-in methods or enumerables you want to use and how you want to approach it.

# - What Ruby method(s) did you use when refactoring your solution? What difficulties did you have 
# implementing it/them? Did it/they significantly change the way your code works? If so, how?
# While working on my initial solution, for the longest time I got down to 2 errors and could not figure out how to 
# fix it. I knew it had to do with the way I was trying to iterate over the characters in the string, but I didn't
# know what or why. For this reason, my initial solution and refactored solution are very similar, because once I 
# found each_char, it completely changed the way I wanted to structure the solution and how I wanted to go about it.
# In my initial solution I also had trouble with chomp, and when researching for refactoring I realized I just needed 
# to add a bang to it, since it's a destructive method. My refactoring, for the most part, was really just cleaning
# up and shortening the solution to make it a bit easier to read and understand.

# - How did you initially iterate through the data structure?
# The first 2 hours I was convinced I needed to split the array and do index % of 3, but for some reason I kept getting 
# 2 syntax errors. Then I tried to the string to an array while iterating and I continued to get the errors.  Then after 
# looking in the ruby docs forever I found the each_char to pass each character in the string and return an array of 
# characters, which was exactly what I needed to get rid of the errors! Once I found each_char, I was able to focus
# on the rest of the solution because not being able to pass over each character did not allow me to move on in the
# beginning. 

# - Do you feel your refactored solution is more readable than your initial solution? Why?
# It's a bit more clean, organized, and readable from my initial solution - but not by much unfortunately. Like I said
# before, since I worked on my initial solution for so long (because I kept getting 2 errors), my initial solution 
# became the beginning steps of my refactored solution. I tried to shorten it and clean it up as much as possible, but
# it was hard to do a lot to it since my initial solution was already edited so much throughout the process. 