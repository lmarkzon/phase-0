# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [6] hours on this challenge.


# Release 0: Pseudocode

# Your goals for this challenge are to:
  # Keep all of the logic and variables inside of the class BingoBoard. Method calls should be outside.
  # Create a method to call letters and numbers (like B43). It will need to generate a letter ( "B", "I", "N", "G", "O") and a number from 1 to 100.
  # Create a method to check whether that column has that number in the existing bingo_board.
  # If the number is in the column, replace it with an "X".
  # Display the new board to the console (Make it pretty).

# Outline:

# Create method INITIALIZE
  # instance variable that accepts a "board"

# Create a method to CALL (generate) a letter ( b, i, n, g, o) AND a number (1-100)       (2 arguments)
  # create variable for array of (b,i,n,g,o) letters 
    # that selects a random index (or letter)?
  # create variable equal to the range of numbers 1-100
    # that selects and generates a random number
  # (return/puts) random letter and number (in array)

# Create a method to CHECK the called column for the number called.                            
  # create hash, key is each (b,i,n,g,o) letter value is corresponding index number to that letter's column
      # b => 0
      # i => 1
      # n => 2
      # g => 3
      # o => 4
  # (return/put) index number of corresponding letter selected
  # If the number is in the column, replace with an 'x'
    # IF any number in the rows(nested-arrays) is the same as (or equal to) the CALLED number: 
     # in the selected index(letter) column, for EACH row (nested-array)
      # create an "object" to iterate over inside the nested-array?
      # replace with an 'x' (modify array)
# Display a column to the console
# Display the board to the console (prettily)
  # iterate over each row
  # (return/p/puts) the row

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end

#   def call
#     @letters = ["B", "I", "N", "G", "O"]
#     @numbers = 1..100

#     @called_letter = @letters.sample         
#     @called_number = @numbers.to_a.sample

#     return "#{@called_letter}" "#{@called_number}"
#   end

#   def check
#     @bingo_board.each do |nested_arr|
#       nested_arr.map! do |character| 
#         if nested_arr.index(character) == @letters.index(@called_letter) && character == (@called_number)
#           character = " X "
#         else
#           return character
#         end
#       end
#     end
#   end


#   def display
#     @bingo_board.each do |nested_arr|
#       p nested_arr
#     end
#   end
# end

# Refactored Solution

class BingoBoard

  attr_reader :random_letter

  def initialize(board)
    @bingo_board = board
    @random_letter = rand(5)
    @called_number = (1..100).to_a.sample
  end

  def call
    letters = ["B", "I", "N", "G", "O"]
  
    @called_letter = letters[@random_letter]         

    @nested_arr_0 = @bingo_board[0]
    @nested_arr_1 = @bingo_board[1]
    @nested_arr_2 = @bingo_board[2]
    @nested_arr_3 = @bingo_board[3]
    @nested_arr_4 = @bingo_board[4]

    p ["#{@called_letter}", "#{@called_number}"]
  end

  def check
    if @nested_arr_0[@random_letter] == @called_number
      @nested_arr_0[@random_letter] = "X"
      display 
    elsif @nested_arr_1[@random_letter] == @called_number
      @nested_arr_1[@random_letter] = "X"
      display
    elsif @nested_arr_2[@random_letter] == @called_number
      @nested_arr_2[@random_letter] = "X"
      display
    elsif @nested_arr_3[@random_letter] == @called_number
      @nested_arr_3[@random_letter] = "X"
      display
    elsif @nested_arr_4[@random_letter] == @called_number
      @nested_arr_4[@random_letter] = "X"
      display
    else
      p "You do not have #{@called_letter}, #{@called_number}, try again next time!"
    end
  end

  def display
    @bingo_board.each do |nested_arr| 
      p nested_arr
    end
  end
end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.call
new_game.check
new_game.display


#Reflection

# - How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
  # I actually thought pseudocoding in this challenge was not that bad and really helpful, for 
  # once! It really helped me understand what exactly I needed to do and when I needed to do it. 
  # In terms of my style, I like that I use headers, but I need to figure out a way to make sure
  # every line of pseudocode is neccessary and going to be used or turned into code. 
# - What are the benefits of using a class for this challenge?
  # Using a class for this challenge allowed me to access variables between methods, which was
  # very helpful. They are also helpful for organizing so I don't have to create a million methods
  # to accomplish the same goal. 
# - How can you access coordinates in a nested array?
  # You access coordinates in a nested array by listing the indexes in the order of which they go
  # from most outer to inner. So to access an array inside of an array, you would first list the 
  # index number of the sub-array, and then list the index of the object within the sub-array.
# - What methods did you use to access and modify the array?
  # All the methods I ended up using in my refactored solution I've used a bunch, like sample,
  # and rand, and I even got to utilize and better understand attr_reader! yay!
# - How did you determine what should be an instance variable versus a local variable?
  # I would ask myself if I was going to need to use this variable again somewhere else outside of
  # the particular loop or instance it was created in. If not, I left it as it, and if so, I made
  # it into an instance variable (opposed to a local). 
# - What do you feel is most improved in your refactored solution?
  # Well I changed how I went about the challenge when I refactored, and I love the way I did it the
  # second time around. It just makes more sense, it more logical, easy to understand and read, 
  # and actually worked!!