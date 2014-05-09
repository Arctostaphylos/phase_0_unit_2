# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge [by myself].

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode
#initialize
# 	creates new pez dispenser with array of flavors and a count variable
#get_pez
#   pops the last flavor from the flavor array 
#pez_count
#   counts the flavors in the array
#add_pez
#   pushes a flavor to the array
#see_all_pez
#   lists the flavors in the array
# 3. Initial Solution

class PezDispenser
def initialize(flavors)
	@flavors = flavors
	@count = flavors.length
end

def get_pez
	pez = @flavors.pop
	@count = @flavors.length
	return pez
end

def pez_count
	@count 
end

def add_pez(pez)
	@flavors << pez
	@count = @flavors.length
end

def see_all_pez
	@flavors.join(" ")
end
 
end
 


# 4. Refactored Solution


# 1. DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"

def assert
	raise "assertion failed" unless true
end

batman = PezDispenser.new(flavors)
assert {batman.pez_count == 9}
batman.add_pez("banana")
assert {batman.pez_count == 10}
assert {batman.get_pez == "banana"}

# 5. Reflection 
# this challenge went very smoothly. Defining the methods was simple based on the user
# stories. I did decide to update the @count variable every time a pez was either
# added or taken out of the dispenser, but I also could have had the pez_count
# method update the @count variable. Because the order of flavors is different for
# each new dispenser, it's difficult to write assert statements that will be true
# for the see_all_pez method.