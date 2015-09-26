# Your Names
# 1)
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  # items they make and how many
  suggested_item = library.each_key { |key| key }
    
  
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
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Would you like #{suggested_item} instead?"
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
