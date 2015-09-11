# Analyze the Errors

# I worked on this challenge [by myself,: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
  #while true
    #puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => 170
# 3. What is the type of error message?
# => syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => unexpected end-of-input, expecting key word_end
# 5. Where is the error in the code?
# => after the '...below as a comment.'
# 6. Why did the interpreter give you this error?
# => it is missing another 'end' so it went all the way to the end of the document.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# => 35
# 2. What is the type of error message?
# => name error
# 3. What additional information does the interpreter provide about this type of error?
# => undefined local variable or method 'south_park' for main: Object
# 4. Where is the error in the code?
# => in '<main>', it is a name error on the object
# 5. Why did the interpreter give you this error?
# => because it is calling for a variable without defining it

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# => 50
# 2. What is the type of error message?
# => no method error
# 3. What additional information does the interpreter provide about this type of error?
# => undefined method `cartman' for main:Object
# 4. Where is the error in the code?
# => in '<main>' , on the main/only object cartman
# 5. Why did the interpreter give you this error?
# => because it calls for a method that has not been defined

# --- error -------------------------------------------------------

#def cartmans_phrase
  #puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => 65
# 2. What is the type of error message?
# => argument error
# 3. What additional information does the interpreter provide about this type of error?
# => `cartmans_phrase': wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# => `cartmans_phrase'
# 5. Why did the interpreter give you this error?
# => because there are no variables set, and then calls for the method.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
  #puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# => 84
# 2. What is the type of error message?
# => argument error
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# => in 'cartman_says' from errors.rb:88:in `<main>'
# 5. Why did the interpreter give you this error?
# => because there is nothing to write, we haven't set cartman_says equal to anything.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
  #puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# => 105
# 2. What is the type of error message?
# => argument error
# 3. What additional information does the interpreter provide about this type of error?
# => in `cartmans_lie': wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# => 'cartmans_lie': from errors.rb:109:in `<main>'
# 5. Why did the interpreter give you this error?
# => because it calls for 2 arguments and then only displays output for one, so it's 1 out of the 2 it expected.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => 124
# 2. What is the type of error message?
# => type error
# 3. What additional information does the interpreter provide about this type of error?
# => string can't be coerced into Fixnum
# 4. Where is the error in the code?
# => in `*': from errors.rb:124:in `<main>'
# 5. Why did the interpreter give you this error?
# => * is a method, so it should go after the string, ex: "Respect my authoritay!" * 5

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# => 139
# 2. What is the type of error message?
# => zero division error
# 3. What additional information does the interpreter provide about this type of error?
# => in `/': divided by 0 
# 4. Where is the error in the code?
# => in `/': from errors.rb:139:in `<main>'
# 5. Why did the interpreter give you this error?
# => it cannot divide 20 by 0, 20/0 is not a number.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => 155
# 2. What is the type of error message?
# => load error
# 3. What additional information does the interpreter provide about this type of error?
# => cannot load such file -- /Users/LMARKZON/dbc/phase-0/cartmans_essay.md
# 4. Where is the error in the code?
# => in `require_relative': from errors.rb:155:in `<main>'
# 5. Why did the interpreter give you this error?
# => because it requires a local file that does not exist on this computer, so it can't find/load it.


=begin  --- REFLECTION -------------------------------------------------------

- Which error was the most difficult to read?
	The error most difficult to read was probably when the error was something simple, such as missing another
	end. It made me wonder why I was having an error already so far into the document. 

- How did you figure out what the issue with the error was?
	Just by breaking down each part of the error message and comparing it to the code. Some I had to look at 
	longer than others.

- Were you able to determine why each error message happened based on the code? 
	Yes, with all the information the message gave me and comparing it with the code, I had no problem coming up
	with why it was happening.	

- When you encounter errors in your future code, what process will you follow to help you debug?
	I used to just get mad and go nuts trying to break down my code and change everything myself, just experiment. 
	Now I will be taking a step-by-step approach like we did here to see where exactly the error is happening and why,
	so I can easily find it and fix it.




