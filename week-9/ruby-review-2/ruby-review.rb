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
class CreditCard
	def initialize(digits)
		@digitarray = digits.to_s.split('').map!{ |value| value.to_i }

  		if @digitarray.length != 16
    		raise ArgumentError.new("Error: please enter 16 digits")
  		end
	end

	def split_digits_to_array
		@digitarray = @digitarray.to_s.split("").map! { |x| x.to_i }
	end

	def double_digits
		@digitarray.map!.with_index do |integer, index|
		
		if index.even?
			integer * 2
		else
			integer
     		end
    	end
   	end

	def sum_digits
		@digitarray = @digitarray.join.to_s.split('').map! { |value| value.to_i }

		@total = 0

     	@digitarray.each { |integer| @total += integer}
			return @total
	end

	def check_card
		double_digits
		sum_digits
		
		@total % 10 == 0 ? true : false
	end
end


CreditCard.new(11111111111111112)

# 4. Convert your driver test code from that challenge into Assert Statements





# 5. Reflection