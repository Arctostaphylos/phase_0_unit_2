# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: sides
# Output: for #sides the number of sides, for #roll a random number between 1 and sides.
# Steps: raise an argument if sides < 1, set the instance variable to sides.


# 3. Initial Solution

class Die
  def initialize(sides)
    if sides < 1
    	raise ArgumentError.new ("sides must be greater than 1")
    end
    @sides = sides
  end
  
  def sides
    return @sides
  end
  
  def roll
    return (rand(sides))+1
  end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

p die = Die.new(6)
p die.sides == 6
p die.roll >=1 && die.roll <= 6





# 5. Reflection 