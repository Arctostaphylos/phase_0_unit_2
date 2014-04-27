# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: guess
# Output: :high, :low or :correct
# Steps: 


# 3. Initial Solution

#class GuessingGame
#  def initialize(answer)
 #   @answer = answer
#    @solved = false
#  end
#  
#  def guess(guess)
#  	if guess > @answer
#  		return :high
#  	elsif guess < @answer
#  		return :low
#  	else 
#  		@solved = true
#  		return :correct
#  		
#  	end				
#  end
#
#  def solved?
#  	return @solved
#  end
#end




# 4. Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
  end
  
  def guess(guess)
  	if guess > @answer
  		@solved = false
  		return :high
  	elsif guess < @answer
  		@solved = false
  		return :low
  	else 
  		@solved = true
  		return :correct
  		
  	end				
  end

  def solved?
  	return @solved
  end
end




# 1. DRIVER TESTS GO BELOW THIS LINE

game = GuessingGame.new(10)
p game.guess(20) == :high
p game.guess(4) == :low
p game.guess(10) == :correct
p game.solved? == true




# 5. Reflection 
# the #guess method was pretty straightforward, but I was stumped on how to 
# implement the #solved? method until I recognized that I needed another
# instance variable to keep track of whether the game had been solved. The
# @solved variable is a way for the object to know whether or not it's been
# solved.  
