#Attr Methods

# I worked on this challenge [by myself]

# I spent [2] hours on this challenge.

class NameData #initialize a @name variable with your name
  attr_reader :name
	def initialize
		@name = "Lauren"
	end
end

class Greetings #initialize instance of NameData
	def initialize
		@student = NameData.new
	end

	def display #method to display a salutation to the console.
		p "Hey #{@student.name}, how wonderful to see you today!"
	end
end

greet = Greetings.new
greet.display

# Reflection

	# Release 1: Read and Research
  	  # What are these methods doing? How are they modifying or returning 
  	  # the value of instance variables?
  	    # They are creating instance variables of the profile class, 
  	    # and giving them values. The methods that say what_is are defining 
  	    # the initial instances, and the change_my methods are defining 
  	    # (or changing) the new instances. The methods return/call the instance
  	    # variable for each to modify or return the value. As said above, the 
  	    # what_is methods are initially setting the values, and the change_my
  	    # ones are modifying them. print_info puts the current values before 
  	    # modifying them. 

  	# Release 2: Identify the Changes
  	  # What changed between the last release and this release? What was 
  	  # replaced? Is this code simpler than the last?
  	    # What changed was the way that the age variable was created and 
  	    # returned. The previous release used the what_is_age method and 
  	    # this release used the attr_reader :age instead. This way is 
  	    # definitely simpler and takes up less lines of code.

	# Release 3: More Changes
	  # What changed between the last release and this release? What was 
	  # replaced? Is this code simpler than the last?
	    # What changed was that in this release an attr_writer is used. In
	    # the previous release they used the change_my_age method to modify
	    # and return the new age, and in this release they used the attr_
	    # writer to modify the value of the variable. This release's code
	    # is both simpler and shorter than the previous. 

# Release 6 Final Reflection:
	# What is a reader method?
		# A reader method returns a value or state outside of the class, but
		# does not change it. 
	# What is a writer method?
		# A writer method allows you to change the value of the variable 
		# outside of the class, but it's not readable.
	# What do the attr methods do for you?
		# attr methods allow you to read and/or write methods with less code 
		# and in a simpler way. We're able to store and return information in 
		# these methods. They're more concise!
	# Should you always use an accessor to cover your bases? Why or Why not?
		# No, having all instance variables changeable when you really only
		# want them to read or write could lead to serious debugging issues
		# later, as well as compromise the security of your data.  It can be 
		# a safeguard against accidentally giving other methods and classes 
		# too much access to the inner workings of others.
	# What is confusing to you about these methods?
		# The only thing that confused me in this challenge was calling the 
		# correct methods in the end to actually run them. I need to work on
		# and study the actual organization and work flow when classes are 
		# inside of other classes. 