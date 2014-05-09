# U2.W6: Create a Car Class from User Stories


# I worked on this challenge [by myself, with: ].


# 2. Pseudocode
# create a car class with objects that take several attributes
# include model, color, distance traveled, current speed, most recent direction driven,

# methods: change_speed, travel_distance, change_direction, 

# car is initially facing N. keep track of the cardinal direction. set an array of the
# x and y coordinates of the car. With each turn of the car, change the cardinal direction.
# with each distance traveled, update the x or y coordinates.

# 3. Initial Solution
=begin
class Car 
	attr_accessor :model, :color, :distance, :speed, :direction 
	def initialize(model,color)
		@distance = 0
		@speed = 0
		@model = model
		@color = color
		@direction = "North"
		@location = [0,0]
	end

	def change_speed (new_speed)
		@speed = new_speed
		return "You are now traveling at #{@speed} mph."
	end

	def travel_distance (new_distance)
		@distance = @distance + new_distance
		return "You have traveled #{new_distance} miles."
	end

	def change_direction (new_direction)
		return "You have turned #{new_direction}."
	end
end
=end
# 4. Refactored Solution
class Car 
	attr_accessor :model, :color, :distance, :speed, :current_direction

	@@directions = ["N", "W", "S", "E"]

	def initialize(model,color)
		@distance = 0
		@speed = 0
		@model = model
		@color = color
		@current_direction = 0
		@location = [0,0]
	end

	def change_speed (new_speed)
		@speed = new_speed
		return "You are now traveling at #{@speed} mph."
	end

	def travel_distance (new_distance)
		if @current_direction % 4 == 0
			@location[1] += new_distance
		elsif @current_direction % 4 == 1
			@location[0] -= new_distance
		elsif @current_direction % 4 == 2
			@location[1] -= new_distance
		else 	
			@location[0] += new_distance
		end
		@distance = @distance + new_distance
		return "You have traveled #{new_distance} miles."

	end

	def change_direction (new_direction)
		if new_direction == "left"
			@current_direction -= 1
		else
			@current_direction += 1
		end
		return "You have turned #{new_direction}."
	end

	def geometric_distance
		return Math.sqrt(@location[0]**2 + @location[1]**2)
	end
end





# 1. DRIVER TESTS GO BELOW THIS LINE

my_car = Car.new("Ashton-Martin", "chrome red")

puts my_car.change_speed(25) == "You are now traveling at 25 mph."
puts my_car.speed == 25

puts my_car.travel_distance(2) == "You have traveled 2 miles."
puts my_car.distance == 2
puts my_car.change_direction("left") == "You have turned left."
puts my_car.travel_distance(2) == "You have traveled 2 miles."
puts my_car.distance == 4



puts my_car.change_direction("left") == "You have turned left."
puts my_car.travel_distance(2) == "You have traveled 2 miles."

puts my_car.change_direction("left") == "You have turned left."
puts my_car.travel_distance(2) == "You have traveled 2 miles."
puts my_car.geometric_distance

# 5. Reflection 