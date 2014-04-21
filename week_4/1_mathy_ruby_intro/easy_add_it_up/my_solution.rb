# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

# What is the input? input is an array
# What is the output? (i.e. What should the code return?) for total the output is a number that is the sum of all the numbers in the array
# for sentence_maker the output is  string with the first letter capitalized and a period at the end
# What are the steps needed to solve the problem?
# total method - set a variable equal to 0 that will accumulate the total. Add each element of the array to the accumulator
# sentence_maker - set a variable equal to the first element in the array, and capitalize it.
# then starting with the second element of the array, join each element to the capitalized string.
# return the resulting string with a period added to the end.

# 2. Initial Solution
#def total (array)
#	sum = 0
#	array.each {|x| sum += x}
#	return sum
#end	

#def sentence_maker (array)
#	sentence = array[0].capitalize
#	index = 1
#	while index < array.length
#		sentence = sentence + " " + array[index]
#		index += 1
#	end
#	return sentence + "."
#end



# 3. Refactored Solution

def total (array)
	sum = 0
	array.each {|x| sum += x}
	return sum
end	

def sentence_maker (array)
	sentence = array[0].capitalize
	index = 1
	while index < array.length
		sentence = sentence + " " + array[index].to_s
		index += 1
	end
	return sentence + "."
end

# 4. Reflection 