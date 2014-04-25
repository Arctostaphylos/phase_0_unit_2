# U2.W4: Cipher Challenge


# I worked on this challenge with: Kris Shanks and Greg White.



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.



def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # splitting message into an array of character and getting rid of capitalizations
  decoded_sentence = []
  cipher = {"e" => "a",   
            "f" => "b",  
            "g" => "c", 
            "h" => "d", 
            "i" => "e", 
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
            
  input.each do |x| # Stepping through each character of the message one by one
    found_match = false  #Needs start false as a default so on line 63 the character will always be put back into th sentence
    #but if we find a match we can decrypt the message mostly. 
    cipher.each_key do |y| #cycling through the cipher hash by key and doing this block
      if x == y  #comparing cipher key to current character
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y]
        found_match = true
        break  #breaking the cipher each key loop to go on to next character in the message
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #comparing x to special characters for a match?
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # changing 1-9 to an array and checking for a match
        decoded_sentence << x
        found_match = true
        break
      end 
    end
    if not found_match  # Will shovel input into sentence if not a recognized character
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
 
  if decoded_sentence.match(/\d+/) #looking for any place with more than one digit 
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #And divide it by 100
  end  
  return decoded_sentence #The decoded sentence      
end

# Your Refactored Solution

def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") 
  decoded_sentence = []
  input.each do |x| 
    ascii = x.ord #change character into an ascii value
    #isolate ascii value by what needs to be done to it
    if ascii < 101 && ascii > 96 #a-d
      ascii += 22
      decoded_sentence << ascii.chr.to_s
    elsif ascii < 123 && ascii > 100 # e-z
      ascii -= 4
      decoded_sentence << ascii.chr.to_s
    elsif ascii < 58 && ascii > 47 #numbers
      decoded_sentence << ascii.chr.to_s
    elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*"
      decoded_sentence << " "
    else #if elsifs fail then it shovels as is into the decoded sentence
      decoded_sentence << x.to_s
    end
  end
    decoded_sentence = decoded_sentence.join("") #join from array into one long string 
    if decoded_sentence.match(/\d+/) 
      decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } 
    end 
  return decoded_sentence   
end



# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" 
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") == "our people eat the most delicious and nutritious foods from our 10000 profitable farms."
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are held together by grape-flavored toffee. don't tell the us!"
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") == "if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!") == "next stop: south korea, then japan, then the world!"
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?") == "can somebody just get me 100 bags of cool ranch doritos?"
 
# Reflection
# We quickly settled on a strategy to replace the hash with a way to look up the ascii values of the
# characters. We had to look up the methods #ord and #chr to convert between strings and ascii values.
# One thing I liked about writing our refactored code is that Greg put the different elseif statements
# in first, and then we went through and wrote what each one was going to do. It helped me see where
# the code was going. I feel pretty comfortable with this challenge, and it was entertaining. The
# one place I had frustration was keeping track of whether we were adding or subtracting to get
# the final ascii value.