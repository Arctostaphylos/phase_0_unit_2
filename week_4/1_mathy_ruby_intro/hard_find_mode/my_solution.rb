# U2.W4: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

# What is the input? an array
# What is the output? (i.e. What should the code return?) an array with the 
#most common values from the original array
# What are the steps needed to solve the problem?
#initialize a hash with a default value of 0
# iterate over the array and add the array element as a key to the hash with a 
# value of the hash value for that key + 1
# set up an answer array to collect the most common array elements
# iterate over the hash and add the key to the answer array if the value is values.max
# return the answer array

# 2. Initial Solution
def mode(arr)
	h = Hash.new(0)
	arr.each{|x| h[x] = h[x]+1}
	mode_array = []
	h.each{|k,v| mode_array << k if v == h.values.max}
	return mode_array
end


# 3. Refactored Solution



# 4. Reflection 