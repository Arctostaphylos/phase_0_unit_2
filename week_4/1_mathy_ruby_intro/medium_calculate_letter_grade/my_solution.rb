# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

# What is the input? an array
# What is the output? (i.e. What should the code return?) a string with the letter grade
# What are the steps needed to solve the problem?
# set a variable called average equal to the sum of the array divided by the array.length
# set up a case statement so that the letter grade is returned for each range of the average



# 2. Initial Solution

#def get_grade (array)
#	sum = array.each {|x| sum += x}
#	case average
#	when 90..100
#		return "A"
#	when 80..89
#		return "B"
#	when 70..79
#		return "C"
#	when 60..69
#		return "D"
#	else
#		return "F"		
#	end
#end			


# 3. Refactored Solution
def get_grade (array)
	sum = 0
	array.each {|x| sum += x}
	average = sum/array.length
	case average
	when 90..100
		return "A"
	when 80..89
		return "B"
	when 70..79
		return "C"
	when 60..69
		return "D"
	else
		return "F"		
	end
end			


# 4. Reflection 