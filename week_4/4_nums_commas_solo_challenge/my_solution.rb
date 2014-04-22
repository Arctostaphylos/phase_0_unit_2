# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input? a number
# What is the output? (i.e. What should the code return?) a string with commas separating every three numbers
# What are the steps needed to solve the problem?
# convert the number to a string
# loop until the counter == the string.length
# every time the counter is divisible by 4, add a comma to the front of the array.
# starting from the back of the string, add each character of the string to the front of an array.
# join the array into a string and return it

# 2. Initial Solution

#def separate_comma(num)
#	number = num.to_s
#	counter = 1
#	num_array = []
#	until counter == number.length
#		num_array.unshift(",") if counter%4 == 0 
#		num_array.unshift(number[-counter])	
#		counter +=1
#	end	
#	return num_array.join("")
#end


# 3. Refactored Solution
def separate_comma(num)
	number = num.to_s
	counter = 1
	num_array = []
	until counter == number.length
		num_array.unshift(number[-counter])	
		num_array.unshift(",") if counter%3 == 0 
		
		counter +=1
	end	
	return num_array.join("")
end


# 4. Reflection 
# I don't know why I initially set the point to insert the comma to be when the counter was divisible by 4. 
# The key to making this work was the order of operations, to push the number to the array before adding the comma.