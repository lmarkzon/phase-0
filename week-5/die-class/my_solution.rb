	# Die Class 1: Numeric

# I worked on this challenge [by myself,: ]

# I spent [1-2] hours on this challenge.

# 0. Pseudocode

# Input: numbers(sides)of die
# Output: random number
# Steps:
	# def initialize method
		# IF sides are less than 1
			#return argument error (using raise keyword)
		# ELSE set sides class variable
	# define sides method
		#return @how many sides there are(number)
	#define roll method
		#rand a range from 1 through the sides
		#return?

# 1. Refactored Solution

class Die
  def initialize(sides)
    if sides < 1
    	raise ArgumentError.new("Error: Less than 1 size")
    else
    	@side_nums = sides
    end
  end

  def sides
    return @side_nums
  end

  def roll
    rand(1..@side_nums)
  end
end


# 4. Reflection
# - What is an ArgumentError and why would you use one?
	# An argument error is raised when the arguments of a method are wrong and there
	# isn't a more specific exception class (so when you're passing the wrong number
	# of arguments) so you have to raise an exception, if that's what you want. You
	# use it to the tell user that their input does not have the appropriate amount
	# of aruguments for the method, it tells them why there's an error.

# - What new Ruby methods did you implement? What challenges and successes did you 
# have in implementing them?
	# Although I've seen it throughout my ruby research and experience up to this point, 
	# this was the first time that I actually got to use rand in my methods. It was very 
	# helpful since it did a lot of my work for me, I just had to give it the range, and 
	# it took care of the rest! I didn't even realize the roll method was done until I 
	# tested the rspec to see my errors of what I still needed, and it passed all of the tests.

# - What is a Ruby class?
	# Ruby classes are like blueprints, once they're done you can use them over and over to determine how
	# objects within that class will behave. A class defines the behaviors of the objects within it,
	# an example of a class would be strings. They have certain rules and behaviors based on the fact that 
	# it is a string, we can also say these ojects are inheriting the behaviors. 

# - Why would you use a Ruby class?
	# Like I said above, you use ruby classes so you can define the classes behavior or parameters once, and
	# then use it again to give other objects the same inherited behaviors. This can save you some serious
	# time building code, as well as keep all of your objects behaviors organized. 

# - What is the difference between a local variable and an instance variable?
	# A local variable has scope only within that context or method, opposed to an instance variable,
	# which is declared inside a method and comes into existence as brand new - each time. In an instance
	# variable, the method runs, and disappears afterwards - it literally is only true for that one instance. 

# - Where can an instance variable be used?
	# An instance variable is scoped to the class, it can be accessed from any method within the class. It's
	# prefixed with an @ symbol. - variable declared inside a method comes into existence brand new each time 
	# the method runs, and disappears afterwards. They are created when the object is created, they stay around 
	# for as long as the object does, and keep their value between method calls.