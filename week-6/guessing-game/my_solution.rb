# Build a simple guessing game


# I worked on this challenge [with: G-unit].
# I spent [#] hours on this challenge.

# Pseudocode
# Input: integer called guess
# Output: :high ->  IF guess > answer
# 		  :low -> IF guess < answer
# 		  :correct -> IF guess == answer

# Steps: 
	# def initialize
		# input: integer called "answer"
		# assign @correct_answer equal to answer
		# output: instance variable called "correct_answer"
	# def guessing game
		# input: integer "guess"
		# assign @guess equal to guess
		# IF @guess greater than answer
			# RETURN :high
		# ELSIF @guess less than answer
			# RETURN :low
		# ELSE
			# RETURN :correct
		# output: symbol (low/high/correct)
	# def solved?
		# input: symbol
		# @guess is equal to @answer
			# boolean (true or false)

# Initial Solution
# class GuessingGame

#   def initialize(answer)
#     @correct_answer = answer
#   end
  
#   def guess(guess)
#   	@guess = guess

#   	if @guess > @correct_answer
# 		return :high

# 	elsif @guess < @correct_answer
# 		return :low
# 	else
# 		return :correct
# 	end
#   end

#   def solved?
#   	@guess == @correct_answer
#   end
# end

# Refactored Solution
class GuessingGame
  def initialize(answer)
    @correct_answer = answer
  end

  def guess(guess)
  	@guess = guess

  	if @guess > @correct_answer then :high
	elsif @guess < @correct_answer then :low
	else :correct
	end
  end

  def solved?
  	@guess == @correct_answer
  end
end


# Reflection

# - How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
	# So if a class is like the blueprint for the house, the blueprint determines the general guidelines or "rules" for the 
	# house, then instance methods and variables would change particular details about the house that you wouldn't necessarily 
	# use for every house that you're building. For example, if you wanted to set a variable for the colors of each house, 
	# you would do so for every house, but the color variable would be different for each house, but every house would have 
	# one. What the color would be for each house though, would be different. 

# - When should you use instance variables? What do they do for you?
	# Instance variables can be called through a particular instance to access pretty much everything in it's class.
	# You use instance variables when you want to declare a variable for only the existence of that method. So when 
	# the method comes into existence, the variable also comes into existence, and then disappears after the method
	# runs. So it exists as long as the method or object does. They are scoped to the class and can be accessed from
	# any method within the class. They also keep their value between method calls.

# - Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
	# When we put the first if statement, it knows that if it returns true, then to do what we ask next, but if not, it knows
	# to go to the elsif statement. Then if the elsif statement is true, it does what it says, or else, it moves to the next
	# else. Well we knew we had to define the methods first within the class, and we knew within the guess method we had to
	# have 3 possibilities. So we set the proper conditions that we knew would result in a boolean true answer, and once 
	# it starts it "knows" to keep moving through the code. If it is not implicitly said to do something once it returns 
	# true, it defaults to keep going through the code.

# - Why do you think this code requires you to return symbols? What are the benefits of using symbols?
	# Symbols can be identified to the programmer by its name or by numeric represenation. If 2 ruby symbols are compared, 
	# and their numeric representation is equal, then the symbols are equal. If you use a symbol a bunch of times in your
	# program, every usage of it would refer to exactly the same obejct with exactly the same numeric representation and
	# exactly the same string representation. Symbols have many advantages like this.
