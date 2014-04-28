# U2.W5: Implement a Reverse Polish Notation Calculator


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: a string with numbers and operators	
# Output: a number
# Steps:
# convert the string to an array
# iterate through the array
# if the element is a number, push it to answer_array
# if the element is an operator, pop the last two elements from answer_array, perform the
# operation, and push the result back to answer_array
# answer is the remaining number in the answer_array


# 3. Initial Solution

#class RPNCalculator
 # def evaluate(expression)
  #	expression_array = expression.split(" ")
  #	answer_array = []
  #	expression_array.each do |x|
  #		if x =~ /^[-+]?[0-9]*$/
  #			answer_array << x.to_i
  #		else
  #			second_num = answer_array.pop
  #			first_num = answer_array.pop		
  #			if x == "*"
  #				answer_array << (first_num * second_num)
  #			elsif x == "+"
  #				answer_array << (first_num + second_num)
  #			else x == "-"	
  #				answer_array << (first_num - second_num)
  #			end
  #						
	#	end  
#	end
#
 # end
 
#end



# 4. Refactored Solution

class RPNCalculator
  def evaluate(expression)
  	expression_array = expression.split(" ")
  	answer_array = []
  	expression_array.each do |x|
  		if x =~ /[0-9]+/ # returns true if x contains one or more digits
  			answer_array << x.to_i
  		else
  			second_num = answer_array.pop
  			first_num = answer_array.pop		
  			if x == "*"
  				answer_array << (first_num * second_num)
  			elsif x == "+"
  				answer_array << (first_num + second_num)
  			else x == "-"	
  				answer_array << (first_num - second_num)
  			end
  						
		end  
	
	end
	return answer_array[0]
  end

 
end





# 1. DRIVER TESTS GO BELOW THIS LINE
calc = RPNCalculator.new
p calc.evaluate('1 2 +') == 3
p calc.evaluate('2 5 *') == 10
p calc.evaluate('50 20 -') == 30
p calc.evaluate('1 2 3 4 + + +') == 10


# 5. Reflection 
# The challenge for this one was finding a way to test whether something was a number or not. I
# pulled a regular expression off stack overflow, but it was too inclusive and treated the 
# operators as numbers. Otherwise I just followed the algorithm from the wikipedia article on
# reverse polish notation. I would like to get rid of the if/else tree that checks the identity
# of the operator, but I don't know how to convert a string to a mathmatical method. 
