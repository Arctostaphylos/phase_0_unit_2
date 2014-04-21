# U2.W4: Homework Cheater!


# I worked on this challenge [by myself].
# 1. Template
# template = "NAME lived in DATE. HE/SHE was an important person. THESIS. I have learned a lot about NAME 's contribution."
# topic1 = "George Washington lived in 1776. He was an important person. He chopped down a cherry tree, but did not lie. I have learned a lot about George Washington's contribution."
# topic2 = "Harrison Ford lived in 1976. He was an important person. He is my favorite movie actor. I have learned a lot about Harrison Ford's contribution."
# topic3 = "Marie Curie lived in 1903. She was an important person. She discovered radioactivity. I have learned a lot about Marie Curie's contribution."

# 2. Pseudocode

# Input: Name, Date, Gender, Thesis
# Output: string that follows the template
# Steps: 
# create a hash to store the name, date, gender and thesis.
# add each value from the parameters to the hash
# define a pronoun variable that will be "he" if gender is male, "she" if gender is female
# puts a string with the hash values interpolated.


# 3. Initial Solution

#def essay_writer (name, date, gender, thesis)
#	data = {"name" => name, "date" => date, "gender" => gender, "thesis" => thesis}
#	if data["gender"] == "male"
#		pronoun = "He"
#	else
#		pronoun = "She"	
#	end
#	return "#{data["name"]} lived in #{data["date"]}. #{pronoun} was an important person. #{data[thesis]}. I have learned a lot about #{data["name"]}'s contribution."		
#end

# 4. Refactored Solution

def essay_writer (name, date, gender, thesis)
	data = {"name" => name, "date" => date, "gender" => gender, "thesis" => thesis}
	if data["gender"] == "male"
		pronoun = "He"
	else
		pronoun = "She"	
	end

	return "#{data["name"]} lived in #{data["date"]}. #{pronoun} was an important person. #{data["thesis"]}. I have learned a lot about #{data["name"]}'s contribution."		
end

# 1. DRIVER TESTS GO BELOW THIS LINE
puts essay_writer("George Washington", 1776, "male", "He chopped down a cherry tree, but did not lie") == "George Washington lived in 1776. He was an important person. He chopped down a cherry tree, but did not lie. I have learned a lot about George Washington's contribution."
puts essay_writer("George Washington", 1776, "male", "He chopped down a cherry tree, but did not lie")
puts essay_writer("Harrison Ford", 1976, "male", "He is my favorite movie actor") == "Harrison Ford lived in 1976. He was an important person. He is my favorite movie actor. I have learned a lot about Harrison Ford's contribution."
puts essay_writer("Marie Curie", 1903, "female", "She discovered radioactivity") == "Marie Curie lived in 1903. She was an important person. She discovered radioactivity. I have learned a lot about Marie Curie's contribution."



# 5. Reflection 
# I haven't worked with hashes much in Ruby, so it was helpful to see that I could use parameters directly in the literal hash notation, and that I could also use string interpolation with hashes.
# My refactoring was mostly a matter of fixing a couple of typos.

