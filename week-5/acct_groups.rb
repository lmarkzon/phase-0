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

# play with above by removing names and add them and see what happens

#2. Initial Solution
# def acct_groups(names)
# 	names.shuffle
# 	new_groups = Array.new

# 	if names.length % 4 == 0 or names.length % 3 == 0
# 		new_groups = names.each_slice(4) do|array|
# 		p array
# 	end
#   end
# end
# 	acct_groups(bobolinks)

#4. Refactored Solution
def acct_groups(names)
	new_groups = []

	if names.length % 3 == 0
		new_groups = names.shuffle.each_slice(3) do|array|
		p array
	end
	elsif names.length % 4 == 0
		new_groups = names.shuffle.each_slice(4) do|array| 	
		p array
	end
	else names.length % 5 == 0
		new_groups = names.shuffle.each_slice(5) do|array| 	
		p array
	end
  end
end
	acct_groups(bobolinks)


#6. Reflection
# - What was the most interesting and most difficult part of this challenge?
# I was have issues the first hour and a half and for the life of me I could not figure out what it was
# that I was doing wrong to cause them. Whenever I would type ruby and the file name into my command line, 
# nothing was showing up, no errors, no output - nothing. This caused me to have a very rough start to the
# challenge and not want to really go above and beyond with it, which was disappointing for me. Even after
# finishing the reflection and handing in the solution, I plan to play around more with this and expand my
# knowledge and learner further. I enjoyed playing around with the different parts of the code and seeing 
# what exactly would change as a result of what I did, when I would change the modulus numbers the way the
# groups were broken down would change, and even just adding and deleting random things to remind myself
# what that object's job was in the code. 

# - Do you feel you are improving in your ability to write pseudocode and break the problem down?
# Definitely, everytime I have a semi successful pseudocoding experience I learn a little more and feel a bit
# more confident in my abilities. As I've said previously, I have a love-hate relationship with pseudocoding but
# the more I do it the more I understand it's importance in the coding process and develop my skills. I'm also 
# learning how to pseudocode more efficiently and logically, so I can be spending the majority of the time on my
# code on the pseudocoding step to result in more efficient methods and solutions. What I do need to work on is
# leaving little pseudocode comments in my actual solutions so I understand what each line of code lines up with
# in my pseudocode.

# - Was your approach for automating this task a good solution? What could have made it even better?
# Yes, I learned about each_slice in a previous challenge and I knew that it would be helpful to me in this 
# particular challenge. Each_slice iterates the given block for each slice of however elements you want it
# broken into, you just have to give it the block of code and determine the number of "slices", or in this 
# case, (sub)arrays. As far as taking of the bobolink list length's modulus of the group sizes, I knew that
# was the right method for me because it was the one I understood the best. The only thing I did not have 
# correct, was the way I was returning or "putting" the output, which, like I said before, really threw me 
# off in the early stages of initializing my solution.

# - What data structure did you decide to store the accountability groups in and why?
# I decided to store the accountability in groups in arrays, mainly because we are not working with convenient
# or obvious key-value pairs. When I saw that we would need the input to be the list of names/strings, I just 
# immediately put them all into an array, since that made sense. Making the only object we received as input 
# an array of strings, so why not just make that big array of strings into smaller arrays of less strings. 
# It seemed like the simplest and most logical way to store the groups. 

# - What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# I know it seems silly, but I didn't realize how simple it was to combine multiple built-in methods and 
# enumerables into one line. In my case, I was able to move shuffle down into one line with the rest of the
# code, as well as use [] instead of Array.new for the new accountability groups. Since I usually spend a lot of
# time working on making my initial solution, my refactored solution is often just more readable/condensed.
