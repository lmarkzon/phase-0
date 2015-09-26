# Your Names
# 1) Lauren Markzon
# 2) N/A

# We spent [1] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  # items they make and how many
    
  unless library.include?(item_to_make)
  # very complicated way to check if have item in library
    raise ArgumentError.new("#{item_to_make} is not a valid input.")
  end
  # raises argument error if item to make isn't in library
  serving_size = library[item_to_make]
  serving_size_mod = order_quantity % serving_size
  # checking for leftovers
   
  if serving_size_mod == 0 # when there are 0 leftovers
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Would you like #{serving_size_mod/1} more cookie(s)?"
  end
end
# returns output based on whether or not there are leftovers
p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)
# calling the method

#  Reflection
  # - What did you learn about making code readable by working on this challenge?
  	# I once again learned that there are multiple ways to produce and refactor working code. Also,
  	# clean and concise code improves its readibility and makes it easier to modify. It's important
  	# that when reading the code, you can understand what each step is doing and why - that it logically
  	# makes sense top to bottom. Less is more.
  # - Did you learn any new methods? What did you learn about them?
  	# In terms of methods, there were not any used in this challenge that I had not used before. I used
  	# include which I've used before, but I needed to check the ruby-docs to make sure I was using it 
  	# correctly. I also looked up case in the docs because I had never seen it before, but I deleted it
    # anyways!
  # - What did you learn about accessing data in hashes? 
  	# I already knew that when accessing data in hashes, you "call" it by it's key, which is a symbol.
  	# You can call it by its key simply by putting the key in between brackets like [key], which is
  	# one of the ways I refactored the code above.
  # - What concepts were solidified when working through this challenge?
  	# I had a really difficult time understanding how to do the suggested baking items and what exactly
  	# the instructions wanted me to do. So by the time the guide explained it to me, I just did cookies
  	# since it only required 1 "leftover" if you will. I need more practice working with modulus and 
  	# really thinking about the details of what I need to do (more pseudocoding).
