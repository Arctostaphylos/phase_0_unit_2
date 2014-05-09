# U2.W6: Drawer Debugger


# I worked on this challenge [by myself].


# 2. Original Code

class Drawer

attr_reader :contents

# Are there any more methods needed in this class?

	def initialize
		@contents = []
		@open = true
	end

	def open
		@open = true
	end

	def close
		@open = false
	end 

	def add_item(item)
		@contents << item
	end

	def remove_item (item = @contents[-1]) #item is set to the last element of the array if not specified
		puts "removing #{item.type}"
		@contents.delete(item)
	end

	def dump  # what should this method return? returns an empty drawer
		puts "Your drawer is empty."
		@contents = []
	end

	def view_contents
		if @contents.length == 0
			puts "Your drawer is empty"
		else	
			puts "The drawer contains:"
			@contents.each {|silverware| puts "- " + silverware.type }
		end
	end

end

class Silverware
attr_reader :type

	def initialize(type, clean = true)
		@type = type
		@clean = clean
	end

	def eat
		puts "eating with the #{type}"
		@clean = false
	end

	def clean_silverware
		puts "cleaning the #{type}"
		@clean = true
	end

	def clean
		puts @clean? "the #{type} is clean" : "the #{type} is dirty"
	end

end

knife1 = Silverware.new("knife")
fork1 = Silverware.new("fork")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.add_item(fork1)
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return?

fork = Silverware.new("fork")
silverware_drawer.add_item(fork)
silverware_drawer.view_contents

fork = silverware_drawer.remove_item(fork) 
fork.eat

#BONUS SECTION
puts fork.clean
fork.clean_silverware
fork.clean

# DRIVER TESTS GO BELOW THIS LINE


# 5. Reflection 
# the most interesting part of this challenge was the last error thrown - the method
# call on line 108 was returning a no method for Nil error. The #remove_item method 
# will return nil if the passed parameter "item" doesn't match an element in the array.
# When you add silverware to the drawer without naming the Silverware object, you can't 
# ask #remove_item to remove it from the drawer by name. 