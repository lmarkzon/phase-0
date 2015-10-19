# Release 1: Complete the Challenge
# U2.W6: Testing Assert Statements
# I worked on this challenge [by myself].

# 2. Review the simple assert statement
def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# method raises assertion failed message
	# unless yield executes the code being passed as true 
	# (You invoke a block by using the yield statement)
# will pass as long as your test code is correct (in this case bettysue)

# 3. Copy your selected challenge here
class Die
  def initialize(sides)
    if sides < 1
    	raise ArgumentError.new("Error: Less than 1 size")
    else @side_nums = sides
    end
  end

  def sides
    "Number of sides: #{@side_nums}"
  end

  def roll
    @roll = rand(1..@side_nums)
    "Number rolled: #{@roll}"
  end
end

# DRIVER CODE
test = Die.new(6)
p test.sides
p test.roll

# 4. Convert your driver test code from that challenge into Assert Statements
assert {test = Die.new(6)}
assert {test.sides}
assert {test.roll}

# 5. Reflection
# - What concepts did you review in this challenge?
	# It was nice to just have a general review of Ruby in this challenge, specifically
	# more review and practice with Ruby classes, and now with assertions as well. 
# - What is still confusing to you about Ruby?
	# I'm still a bit confused with the difference between ruby and rspec, but I'm going
	# to research this to help with my confusion. I also need to just get more practice 
	# working with Ruby classes, since they intimidate me quite a bit. I'm also still a
	# little confused on what exactly the purpose of assertions are, but I also plan to 
	# research this a bit more.
# - What are you going to study to get more prepared for Phase 1?
	# I'm going to be studying and reviewing a lot of Ruby, I feel like learning JavaScript
	# recently has wiped away everything I learned about Ruby. So really just reviewing key'
	# Ruby concepts, terms, and practice with defining methods and using classes.