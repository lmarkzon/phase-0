# =begin 

# Psuedocode 

# 1) Create a new list
# - input: string
# - Create a new hash and give name
# - output: empty hash

# 2) Add an item with a qty to list
# - input: item(string), qty(integer), list (hash)
# - adding item and qty to hash as key/value pair
# - output: updated hash with key/value pairs

# 3) Remove an item from the list
# - input: item and list(hash)
# - search hash for item
# - delete item
# - output: RETURN updated hash with item removed

# 4) Update quantities for items on your list
# - input: item(string), qty(integer), list (hash)
# - search for item within hash
# - update value(qty) for that key(item)
# - output: return new hash

# 5) Print the List
# - input: list(hash)
# - iterate over list(hash)
# - print key: value pairs
# - output: printed key: value pairs on separate lines
  
#   =end

def new_list(list_name)
list_name = Hash.new
end

def add_item(item, qty, list)
  list[item] = qty
end

def remove_item(item, list)
  list.delete(item)
end

def update_quantity(item, qty, list)
  list[item] = qty
end

def print_list(list)
  list.each do |item, qty|
    puts "#{item}: #{qty}"
  end
end

grocery_list = {}

add_item("Lemonade", 2, grocery_list)
add_item("Tomatoes", 3, grocery_list)
add_item("Onions", 1, grocery_list)
add_item("Ice Cream", 4, grocery_list)

remove_item("Lemonade", grocery_list)

update_quantity("Ice Cream", 1, grocery_list)

print_list(grocery_list)

=begin

Reflection

- What did you learn about pseudocode from working on this challenge?
	As much as I wanted to hate psuedocoding, it's actually super helpful in the coding process
and I'm finally understanding why it's so important. Before psuedocoding, I didn't even know where
to start with my more complex code and would end up in a hole so deep that I didn't even know how 
I got there in the first place. Pseudocoding breaks down the steps you need to make and how you're
going to make them. My partner and I were also very specific about what exactly we wanted to do
in each step of each method's psuedocode, so we were able to just fly through the solutions. We 
only included what was necessary, but we didn't forget about the specifics.

- What are the tradeoffs of using Arrays and Hashes for this challenge?
	When I read the instructions of this gps, I knew immediately that we would benefit more from 
using a hash opoosed to arrays, for a couple reasons. The main reason was that we wanted a list
of items with their quantities, so key/pair values immediately popped up in my head. In addition,
we wanted to be able to call each item by it's name, because calling it by an index number in this 
situation would not be ideal or efficient to me. If we had needed to make an ordered list items, 
then I would have said an array, but the hash is just perfect for key/value pairs and this situation.

- What does a method return? What kind of things can you pass into methods as arguments? How can you 
pass information between methods?
	When you call a method, the method call evaluates to something(is executed and has results), this 
is the method's return value. It can be anything, a float, string, integer, boolean, etc. A method 
argument is like it’s parameters, a list of parameters passed to an object. Arguments are pieces of 
information that are sent to a method to be modified or used to return a specific result. We pass 
arguments onto a method when we call it. Variables may also be assigned to assist in the process.

- What concepts were solidified in this challenge, and what concepts are still confusing?
	Sarah solidified for us why we didn't need to have returns or even p's everywhere once 
we were done with our code, but, she did tell us that it was good we started with the p's
everywhere for debugging purposes. We also got a little stuck when we had to create our list name, 
which our guide told us she didn't think was necessarily our fault. Lastly, we almost forgot to add
the list itself as a variable in the beginning of the challenge, but we comically both realized it
at the same time!

end