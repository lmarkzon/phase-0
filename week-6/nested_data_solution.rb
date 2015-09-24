# # RELEASE 2: NESTED STRUCTURE GOLF
# # Hole 1
# # Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# # attempts:
# # ============================================================
# p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# # attempts:
# # ============================================================
# p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# # attempts:
# # ============================================================
# p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |element|
	if element.kind_of?(Array)
		element.each { |integer| p integer + 5}
	else p element + 5
	end
end

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do |element|
	if element.kind_of?(Array)
		element.each { |element2| 
			if element2.kind_of?(Array)
				element2.each { |string| p string + "ly"}
			else p element2 + "ly"
			end
		}
	else p element + "ly"
	end
end


# Reflection
# - What are some general rules you can apply to nested arrays?
	# One general rule is that when counting index numbers in an array with objects in it, each object
	# has it's own index number, whether that object is a string, integer, or an array. If one of those
	# objects is an array and you want to access the objects inside, you put a 2nd index number next to
	# the first one. You indentify the 2nd index number by starting over in the inner array with 0 and
	# counting up like normal. This allows you to go deeper into the array with the 2nd index number. 
	# So you always work from the outside and go in deeper, and that's how you list the index numbers.
	# Lastly, we had to check to make sure the element was an array for array methods, or else we ran
	# into errors and problems. 
# - What are some ways you can iterate over nested arrays?
	# Based on what we did, iterating over nested arrays is almost exactly the same as iterating over
	# regular arrays, except with an added "layer of depth". We used each since we are both very familiar
	# with it and it's just a simple loop through each of the elements. So we just had to repeat this
	# to go even deeper with the strings, but not with the original number array method. We also used
	# map, which was helpful wuth the bonus part of the challenge. 
# - Did you find any good new methods to implement or did you re-use one you were already familiar with? 
# What was it and why did you decide that was a good option?
	# For the original first part of the challenge, we used map, kind_of, and each. I was familiar with
	# each, but not with kind_of and not really with map. My partner was familiar with map and suggested
	# we use it, it loops once through each element, replacing the element with the returned value. Since
	# we needed it to modify the original input (opposed to create and return a new one), we added bang!
	# We also needed a method to check to make sure the input was an array, so we looked up methods in 
	# ruby docs and found 'kind_of?', which returns true (therefore evaluates the code) if class is the
	# same class as the object(or superclasses or modules included).
