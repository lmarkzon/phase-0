#1. Pseudocode
# - Goal: create a method that will take a list of names (strings) 
	# and separates them into groups of at least 3 (or can do groups of 4 or 5)

# - input: array list of strings/names(called bobolinks) that contains (48) different names/strings 
# - output: arrays(12?) with strings(4?) within each (acct_groups)

# - Steps:
# new empty array
	# separate list of strings depending on number of strings (size/length) of list
		# IF the list length has modulus of 3 equal to 0 (since 48 / 3 = 16)
			# then slice 3 strings and push into each of 16 new arrays
		# ELSIF the list length has modulus of 4 equal to 0 (48 / 4 = 12)
			# then slice 4 strings and push into each of 12 new arrays
		# ELSE the list length has modulus of 5 equal to 3 (48 / 5 = 9 with 3 remain)
			# then slice 5 strings and push into 9 arrays 
				# THEN push remaining 3 strings into 1 new?? array
				# check if last array is less than 3 length?
# - return new grouped arrays

bobolinks = [
"Aji Slater", "Alison Lyons", "Awilda Cantres", "Celeste Carter", "Christopher Mark", "CJ Joulain", 
"Colin Razevich", "David O'Keefe", "Eric Shou", "Eunice Choi", "Farman Pirzada", "George Wambold", 
"Hana Worku", "Harmin Jeong", "Ian Lockwood", "Irina Renteria", "Jamie Runyan", "Jenna Andersen", 
"Julian Lesse", "Jupiter Baudot", "Kai Huang", "Kim Allen", "Kristie Chow", "Lauren Jin", "Lauren Markzon", 
"Marcel Galang", "Marcus Davis", "Marvy Tagala", "Michael Landon", "Miguel Melendez", "Mike Cerrone", 
"Nathan Park", "Nicholas Yee", "Ovi Calvo", "Pamela Antonow", "Paul Etscheit", "Regina Compton", "Richard Leo", 
"Ricky Binhai Hu", "Rosslyn Sinclair-Chin", "Ryan Lesson", "Salim Rahimi", "Sam Purcell", "Shawn Watson", 
"Shunqian Luo", "Solomon Fernandez","Un Choi", "Zino Hu"
]

#2. Initial Solution



#4. Refactored Solution
def acct_groups(names)
	new_groups = []

	if names.length % 3 == 0
		new_groups = names.shuffle.each_slice(4).map do|character| p character
	end
  end
end
	acct_groups(bobolinks)



#5. Write Driver Code



#6. Reflection
# - What was the most interesting and most difficult part of this challenge?


# - Do you feel you are improving in your ability to write pseudocode and break the problem down?


# - Was your approach for automating this task a good solution? What could have made it even better?


# - What data structure did you decide to store the accountability groups in and why?


# - What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

