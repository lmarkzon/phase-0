# # RELEASE 2: NESTED STRUCTURE GOLF
# # Hole 1
# # Target element: "FORE"

# array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# # attempts:
# # ============================================================
# p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

# hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# # attempts:
# # ============================================================
# p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

# nested_data = {array: ["array", {hash: "finished"}]}

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