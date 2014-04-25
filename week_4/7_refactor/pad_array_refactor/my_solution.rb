# U2.W4: Review and Refactor: Pad an Array

# I worked on this challenge [by myself].



# 1. First Person's solution I liked
#    What I learned from this solution
# Two new things: replace and dup. It didn't occur to me to use times to fill out the array. 
# His solution is much more compact - my solution requires an initial check if the array
# needs padding, but by using times he's eliminated that step. I really like that he's
# calling the destructive version to solve the non-destructive method. 

# Copy solution here:
# from Ron Ishak
#class Array
#  def pad!(number, padding = nil)
#   (number - self.length).times { self << padding }
#   replace(self)
#  end
#
#  def pad(number, padding = nil)
#    dup.pad!(number, padding)
#  end
#end




# 2. Second Person's solution I liked
#    What I learned from this solution
# Ben's solution is similar in that he's also using times. It's instructive to 
# compare the two solutions. I notice that Ron's does not return an array
# at the end of the method, and I'm wondering if it's necessary for Ben to do
# so. 

# Copy solution here:

# from Ben Brostoff
#class Array #extend class
#      def pad(l, output = nil) #setting output to nil makes second arg optional
#          amount = l - self.length
#          copy = self.dup #make non-destructive via duplication
#          amount.times{copy.push(output)}
#          return copy
#        end

#       def pad!(l, output = nil)
#        amount = l - self.length
#          amount.times{self.push(output)} #value of self is permanently changed
#          return self
#        end

#end



# 3. My original solution:
#class Array
#	def pad (size, value = nil)
#		final_array = []
#		self.each {|x| final_array << x}
#		return final_array if self.length >= size
#		difference = size - self.length
#		pad_array = Array.new(difference, value) 
#		final_array = final_array + pad_array
#		return final_array
#	end
#
#	def pad!(size,value = nil)
#		return self if self.length >= size
#		difference = size - self.length
#		pad_array = Array.new(difference, value) 
#		self.concat(pad_array) 
#		return self
#	end
#end	


# 4. My refactored solution:

class Array
	def pad (size, value = nil)
		final_array = self.dup
		(size - self.length).times{final_array << value}
	end

	def pad!(size,value = nil)
		(size - self.length).times{self << value}
		replace(self)
	end
end	



# 5. Reflection