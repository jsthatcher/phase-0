# Reverse Words


# I worked on this challenge by myself.
# This challenge took me [#] hours.

# Pseudocode
=begin
1. Define the function
	Input: a string
2.separate the words into an array of strings
3.iterate through the array
	reverse each string
4.Join the array together into a string
5.Return the string
=end

# Initial Solution
=begin
def reverseEachWord(string)
	words = string.split(' ')
	words.each do |word|
		word.reverse!
	end
	string = words.join(' ')
	print string
end
=end

def random_word(length = 5)
  rand(36**length).to_s(36)
end



# Refactored Solution
def reverse_words(string)
	words = string.split(' ')
	words.each do |word|
		word.reverse!
	end
	string = words.join(' ')
	p string
end

reverse_words('test')
word = random_word
reverse_words(word)

# Reflection
=begin
What concepts did you review or learn in this challenge?
It was nice just to go back to a syntax that I'm used to, though it definitely was hard to transfer between them. 

What is still confusing to you about Ruby?
My weakest section of learned that we did was probably classes. When I finally did thoroughly understand them we had moved on.

What are you going to study to get more prepared for Phase 1?
I'll probably be doing a couple more of these Ruby review challenges.
=end