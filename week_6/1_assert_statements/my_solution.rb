# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
#assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# the assert method will raise "Assertion failed!" if the result of yield is false.
# In the first case, the code block is true, but the second code block is false and
# that raises the error.


# 3. Copy your selected challenge here
def bakery_num(num_of_people, fav_food)
        my_list = {"pie" => 8, "cake" => 6, "cookie" => 1}
        output = []
        if my_list.has_key?(fav_food) == false
            raise ArgumentError.new("You can't make that food")
        end
        if num_of_people % my_list[fav_food] == 0
            return "You need to make #{num_of_people / my_list[fav_food]} #{fav_food}(s)."
        else
            my_list.each{|k,v|
                    if my_list[fav_food] >= my_list[k]
                            output << num_of_people/my_list[k]
                            num_of_people = num_of_people % my_list[k]
                    else
                            output << 0
                end
                }
            sentence = "You need to make #{output[0]} pie(s), #{output[1]} cake(s), and #{output[2]} cookie(s)."
            return sentence
        end
    end

# 4. Convert your driver test code from that challenge into Assert Statements

def assert
	raise "Assertion failed" unless yield
end

assert  {bakery_num(24, "cake") == "You need to make 4 cake(s)."}
assert {bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."}
assert {bakery_num(24, "cookie") == "You need to make 24 cookie(s)."}
assert {bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."}
assert {bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
}



# 5. Reflection
# the one bother with raising assertions is that it stops the runtime environment, so if 
# the first assertion fails, you don't know if the other assertions are failing or passing.

