##Release 1: Summarize

1) What does puts do?

"Puts" literally writes onto the screen/console whatever you put after it on a new line. It stands for "put string", but it doesn't actually return anything (nil), it just outputs the string to the screen/console. 

2) What is an integer? What is a float?

An integer is a whole number, or a number that does not contain any decimal points. Floats are the opposite, float is short for floating-point numbers and are numbers that contain decimal points (are not whole numbers). 

3) What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

Most programs use integers and don't use floats, floats are more-so used for academic/schooling purposes. Float division gives you the exact product of the numbers to the closest tenth, just like if you typed a division problem into a calculator and got the answer. Your answer will be a "float" since the numbers in the "question" were. Integer division, on the other hand, only gives you integer answers; it gives you your answer as a whole number (rounded down from the exact answer). It's like doing long division in school, except you "ignore" the remainder. Integer problems/questions result in integer answers.

##Release 2: Try It!

irb(main):003:0> puts 365 * 24 
=> 8760 					#hours in 1 year

irb(main):004:0> puts 365 * 24 * 60 
=> 525600					#minutes in 1 year

irb(main):005:0> puts 365 * 24 * 60 * 10 
=> 5256000					#minutes in a decade

##Release 5: 

[Defining Variables](https://github.com/lmarkzon/phase-0/blob/master/week-4/defining.variables.rb)

[Simple String Methods](https://github.com/lmarkzon/phase-0/blob/master/week-4/simple-string.rb)

[Local Variables and Basic Arithmetical Operations](https://github.com/lmarkzon/phase-0/blob/master/week-4/basic-math.rb)

##Release 7: Reflect

1) How does Ruby handle addition, subtraction multiplication, and division of numbers?

Ruby handles addition, subtraction, multiplication, and division pretty much the same way a calculator does, depending on if you're working with floats or integers.

2) What is the difference between integers and floats?
Like stated in the first set on questions, an integer is a number that does not contain any decimal points, it's a whole number. Floats are the opposite, float is short for floating-point numbers and are numbers that contain decimal points (are not whole numbers).

3) What is the difference between integer and float division?
Like stated in the first set of questions, float division gives you the exact product of the numbers to the closest tenth, just like if you typed a division problem into a calculator and got the answer. Your answer will be a "float" since the numbers in the "question" were. Integer division, on the other hand, only gives you integer answers; it gives you your answer as a whole number (rounded down from the exact answer). It's like doing long division in school, except you "ignore" the remainder.

4) What are strings? Why and when would you use them?
Strings are groups of letters in a program, like strings of beads with letters on them. They have to be inside apostrophes like this 'string' to be considered a string. Strings can contain punctuation, digits, symbols, and  spaces, and you can even create empty strings to create line breaks or other reasons. You can add strings together the same way you can with numbers in Ruby. So if you wanted to put a word/sentence or some sort of symbol onto the screen/console, you can puts 'Any string of letters you want!' with any sort of method you want attached. You can even set a string equal to a variable to puts it on the screen as many times as you want or do anything else to it.

5) What are local variables? Why and when would you use them?
Variables are basically names you temporarily assign ruby objects/strings/numbers for the program's session. So if you wanted to use certain strings (or something) multiple times you can just type the variable in, instead of the entire string. You can reassign a variable new values throughout a program, and they can be very useful.

6) How was this challenge? Did you get a good review of some of the basics?
I really enjoyed this challenge, even though we studied all of this prepping for the DBC interview, I have so much other stuff in my head now that I needed the slow, step-by-step refresher. Definitely got a good review of the basics and I'm really enjoying the Chris Pine book - which has been super helpful!
