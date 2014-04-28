# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: 16 digit number
# Output: true or false depending on whether card is valid
# Steps:
# check that card length = 16 digits
# convert the cc number to a string
# convert the string into an array of 16 strings
# map the string to integers - now I have an array of 16 integers
# double method:
# iterate through the array each with index - if the index is even, double the number,
# iterate through the array - if the number > 9, convert to string and add each 
# character to the array as a number
# check_card method:
# iterate through the array adding up the elements
# return true if the total%10 == 0, otherwise return false

# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard
	def initialize(card)
		raise ArgumentError.new("must be 16") if card.to_s.length != 16
		@card = card	
	end

	def check_card
		card_array = @card.to_s.split('')
		card_array.map!{|x| x.to_i}
		card_array.each_index{|x| card_array[x] = card_array[x]*2 if x.even?}
		final_array = []
		card_array.each do |x|
			if x < 10
				final_array << x
			else
				char_array = x.to_s.split('')
				final_array << char_array[0].to_i
				final_array << char_array[1].to_i
			end
		end
		sum = 0
		final_array.each{|x| sum += x}
		return sum%10 == 0? true : false
	end
	
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

card = CreditCard.new(4408041234567893)
p card.check_card == true

card2 = CreditCard.new(4408041234567892)
p card2.check_card == false





# 5. Reflection 
# The hardest part of this exercise was writing the pseudocode. Once I had a clear idea
# of the steps it was pretty clear how to proceed in the code. The basic strategy of turning
# the numbers into strings to separate the characters and then turn them back into 
# integers works, but I've also created three different arrays to solve the problem
# and I wonder if there's a more elegant way to do it. For this challenge I did a lot
# of testing in irb of the different array methods to make sure they were going to do
# what I thought. I'm feeling comfortable with the material so far.
