# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1)
# 2)

 # This is the file you should end up editing. 
 
# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1) Kris Shanks
# 2) Austin Bourdier

 # This is the file you should end up editing. 
 
# def bakery_num(num_of_people, fav_food)
#   my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} #values = number of serving per item
#   pie_qty = 0
#   cake_qty = 0
#   cookie_qty = 0
  
#   has_fave = false 

#   my_list.each_key do |k| #checking if entered fav_food is in my_list
#   if k == fav_food
#      has_fave = true
#      fav_food = k #it's setting fav_food to the key so you can later access that value from my_list hash
#     end
#   end
#   if has_fave == false #checking if fav_food was in list
#     raise ArgumentError.new("You can't make that food") #raises argument error if fav_food not in list
#   else
#     fav_food_qty = my_list.values_at(fav_food)[0] #gets value from hash for fav_food
#     if num_of_people % fav_food_qty == 0 #check if serving size divides perfectly into the number of people
#       num_of_food = num_of_people / fav_food_qty
#       return "You need to make #{num_of_food} #{fav_food}(s)."
#     else num_of_people % fav_food_qty != 0 
#       while num_of_people > 0
#         if num_of_people / my_list["pie"] > 0 #checking if there are more people than a pie can serve
#           pie_qty = num_of_people / my_list["pie"] #dividing number of people number of servings, and assigning that to pie_qty
#           num_of_people = num_of_people % my_list["pie"] #changing remaining people to be served to the remainder
#         elsif num_of_people / my_list["cake"] > 0
#           cake_qty = num_of_people / my_list["cake"]
#           num_of_people = num_of_people % my_list["cake"]
#         else
#           cookie_qty = num_of_people #takes the remaining people and make cookies for them
#           num_of_people = 0 #bumps us out of the while loop
#         end
#       end
#     return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
#     end
#   end
# end

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


#-----------------------------------------------------------------------------------------------------
#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!
 
 