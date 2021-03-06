# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: an array of strings
# Output: a randomly selected string from the array 
# Steps: for initialize - set up two variables, one is the array, the other is the array.length
# sides will return array.length
# roll will calculate a random number between 0 and array.length, and use that as an index
# to return one of the strings from the array.


# 3. Initial Solution

class Die
  def initialize(labels)
  	if labels.length == 0
  		raise ArgumentError.new ("array can't be empty")
  	end
  	@labels = labels
  	@sides = labels.length
  end

  def sides
  	return @sides
  end

  def roll
  	index = rand(@sides)
  	return @labels[index]
  end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

die = Die.new(["A", "B", "C"])
p die.sides == 3
p die.roll == "A" || "B" || "C"



# 5. Reflection Nothing new to learn here.
