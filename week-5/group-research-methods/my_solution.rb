# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, 
  "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  words = []
  found_things = []
  source.each do |word|
    if word.is_a?(String) && word.include?(thing_to_find)
      found_things.push(word)
    end
  end
  return found_things
end

def my_hash_finding_method(source, thing_to_find)
  found_things = []
  source.each do |pet, age|
    if age == thing_to_find
      found_things.push(pet)
    end
  end
  return found_things
end

=begin
Identify and describe the Ruby method(s) you implemented.
I used the each method to iterate over both the array and the hash. I used an if statement 
within each each to check whether or not the item being iterated over was the thing I was 
looking for. If it was, I pushed it into a new array. At the end, I made sure to return that
array that held all the things that matched what was being looked for.
=end

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.map! {|x| x.is_a?(Integer) ? x + thing_to_modify : x}
end

def my_hash_modification_method!(source, thing_to_modify)
       source.each {|k, v| source[k] = v + thing_to_modify}
       p source
end

# Identify and describe the Ruby method(s) you implemented.
# I used the map! method which goes over the entire array and remakes it with any code that you insert. 
# I also saw there is a .collect that appears to do something similar. I wasn't able to use to use either 
# method successfully on the hash, however. I'm not sure why. After reading through Ruby docs basically 
# from the top--down I saw that the .store method is a way to individually change values in a hash. I 
# decided to try iterating through the hash with each and then using store on each key-value pair to 
# change the value in cases where the value was an integer. It worked.


# Person 3
# def my_array_sorting_method(source)
#   source.sort {|a, b| a.to_s <=> b.to_s}
# end

# Refactored Array Method
def my_array_sorting_method(source)
  p source.sort_by {|a| a.to_s }
end

def my_hash_sorting_method(source)
  p source.sort_by {|k, v| v}
end

# Identify and describe the Ruby method(s) you implemented.
=begin
I used the .sort and .sort_by methods. The array contains both integers and
strings, so I needed to account for this. In my initial solution, I added a
comparator with .to_s converters in the block. The .to_s converts the integer,
allowing comparison of the two objects. I then refactored this solution.
I used .sort_by, a method that assumes that I want to compare two items –
hence I do not need the explicit comparator, though I do need the conversion.
The hash sorter is very similar. I used the .sort_by method, and in the block
I indicated that each item in the hash should be sorted by its value. The
.sort_by method returns an array of "array pairs."
=end


# Person 4
# Psuedo:
#input: source and thing to delete,
# - deletes all the strings that contain that letter(things to delete)
# - should modify the original since we now permanently hate that letter
# - output: source without the deleted things

#Refactored Solution
def my_array_deletion_method!(source, thing_to_delete)
  source.delete_if { |item| item[1] == thing_to_delete }
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete_if { |key, value| key == thing_to_delete }
end

#-Identify and describe the Ruby method(s) you implemented.
#-for the hash deletion, delete_if deletes every key-value pair when it evaluates to true: 
    #  delete_if {| key, value | block } → hsh
#-for the array deletion, delete_if deletes every element in index 1 (since the thing_to_delete 
#  will be inputted in that spot in the array) and is equal to the thing to delete (evaluates to true)
    #  delete_if { |item| block } → ary


# Person 5
# def my_array_splitting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_splitting_method(source, age)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#