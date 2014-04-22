# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

# What is the input? an array, pad parameter and optional value for the array.
# What is the output? (i.e. What should the code return?) either a new array 
# or a modified array
# What are the steps needed to solve the problem?
# determine array length
# if the pad value is less than or equal to the array length, return the original array
# find the difference between the pad parameter and the array length
# initialize a new array using the difference and optional value
# add the two arrays together

# 2. Initial Solution
def pad (size, value = nil)
	return self if self.length >= size
	difference = size - self.length
	pad_array = Array.new(size, value) 
	pad_array = self + pad_array
	return pad_array
end

# 3. Refactored Solution



# 4. Reflection 