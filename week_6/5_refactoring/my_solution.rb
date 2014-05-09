# U2.W6: Refactoring for Code Readability


# I worked on this challenge [by myself].


# Original Solution
=begin
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
=end

# Refactored Solution

class CreditCard
	def initialize(card)
		raise ArgumentError.new("must be 16") if card.to_s.length != 16
		@card = card	
	end

	def check_card
		card_array = @card.to_s.split('')
		card_array.map!{|x| x.to_i}
		card_array.each_index{|x| card_array[x] = card_array[x]*2 if x.even?}
		
		answer = card_array.join.split('').map(&:to_i) #got rid of my if/else construct for separating out each digit
	
		sum = answer.inject(:+) #using inject instead of each to sum the array
		return sum%10 == 0 #got rid of ternary operator because the boolean alone returns true or false
	end
	
end




# DRIVER TESTS GO BELOW THIS LINE

card = CreditCard.new(4408041234567893)
p card.check_card == true

card_test = CreditCard.new(5461263207702155)
puts card_test.check_card == true

card2 = CreditCard.new(4408041234567892)
p card2.check_card == false



# Reflection 
=begin
My refactoring was strongly influenced by finding jaiyeolab's solution to the challenge.
I was aware that my solution needed some refactoring, so this was a perfect opportunity to
clean it up. It didn't occur to me to separate the digits by first shoving them together
(join) and then splitting them apart. 
	
=end