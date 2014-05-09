# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [by myself].


# 2. Pseudocode



# 3. Initial Solution
class BoggleBoard
 	def initialize(board)
 		@board = board
 	end

 	def get_col(col)
	
    	column =[]
   		@board.length.times do |i|
       	 column << @board[i][col]
      		end
      	return column.join("")
	end
	
	def get_row(row)
  		@board[row].join("")
	end

	def create_word( *coords)  
    	coords.map { |coord| @board[coord.first][coord.last]}.join("")  
  	end

  	def get_letter(row, col)
  		@board[row][col]
  	end
end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)
 


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:
puts boggle_board.create_word([2,1], [1,1], [1,2], [0,3])  == "code"  
puts boggle_board.create_word([0,1], [0,2], [1,2])  == "rad"
p boggle_board.get_row(1) ==  "iodt"
p boggle_board.get_col(1)  ==  "roca"
p boggle_board.get_letter(3,2) == "k"

# 5. Reflection 
# The advantage of writing the methods to be part of a class is that we can now use
# the same code to interact with many different possible dice grids. I actually
# wrote these methods last week as an alternative solution to the original 
# boggle board challenge.