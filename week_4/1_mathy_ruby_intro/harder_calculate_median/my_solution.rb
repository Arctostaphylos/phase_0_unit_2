# U2.W4: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

# What is the input? an array
# What is the output? (i.e. What should the code return?) either a number or string that is the median value
# What are the steps needed to solve the problem?
# sort the array
# if the array is even - take the average of the middle two numbers which will be at position array.length/2 and array.length/2 - 1
# if the array is odd, return the middle number at position array.length/2


# 2. Initial Solution
def median (array)
	array_sorted = array.sort
	items = array_sorted.length
	if items%2 == 0
		sum = array_sorted[items/2] + array_sorted[items/2 - 1]
		return sum/2
	else
		return array_sorted[items/2]
	end
end



# 3. Refactored Solution



# 4. Reflection 