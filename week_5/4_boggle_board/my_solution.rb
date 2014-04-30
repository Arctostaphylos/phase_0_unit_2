# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself, with: Ryan Stack ].

$boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
# create_word takes two parameters, board and coords.
# coords is a list of arrays of two numbers specifying the coordinates of each letter.
# use an enumerable method that will loop through the coords identifying the 
# referenced letter, and then joining together the referenced letters

# Initial Solution
def create_word(board, *coords)  #define a method, taking two parameters, the second of which is a splat argument, allowing for an indeterminant amount of parameters
    coords.map { |coord| board[coord.first][coord.last]}.join("")  #Map iterates through the array of coordinates, then the functions uses specific method calls to reference the letter at its respective coordinates.
  end

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
puts create_word($boggle_board, [2,1], [1,1], [1,2], [0,3])  == "code"  
puts create_word($boggle_board, [0,1], [0,2], [1,2])  == "rad"

# Reflection 
# what makes this work is the splat argument for coords that takes any number
# of arguments and returns them all in an array. That way, you can call map on the coords
# variable. 
#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
# define a function get_row that takes one parameter row
# access the row by using bracket notation on the array boggle_board

# Initial Solution
def get_row(row)
  $boggle_board[row]
end

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
puts "part 2"
p get_row(1) ==  ["i", "o", "d", "t"]

# Reflection 
# I followed up with two different solutions to the issue of defining the boggle_board
# array outside of the method. In this solution I used a global variable. Otherwise it
# is a simple call to the array.


#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode

# Initial Solution
def get_col(board, col)
	
    column =[]
    board.length.times do |i|
        column << board[i][col]
      end
      return column

end
        

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
puts "part 3"
p get_col($boggle_board,1)  ==  ["r", "o", "c", "a"]

# Reflection 
# for this solution I added a second parameter, board, to solve the problem of
# defining the array outside of the method. Since I've defined it as a global variable,
# I could have used it directly, but I wanted to try this way as well. I didn't realize
# the times method had a built in interator value (the i variable that increases by one
# with each loop through times). 