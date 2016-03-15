# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent 1 hours on this challenge.

# Pseudocode

# Input:An Array
# Output:
	#Sides: the length of the array
	#Roll: A randomly selected variable in the array
# Steps:
	#Initialize: define instance variableArray
		#IF the variableArray is empty
			#THEN raise argumentError

	#Sides: return length of variableArray

	#return: return value at (a random index in range) in varaibleArray

# Initial Solution
=begin
class Die
  def initialize(labels)
  	@labels = labels
  	if @labels.empty? == true
  		raise ArgumentError.new("Empty array")
  	end
  end

  def sides
  	@labels.length
  end

  def roll
  	result = @labels[rand(@labels.length)]
  end
end

#test
test = Die.new(["a"])
test.roll
=end

# Refactored Solution

class Die
  def initialize(labels)
  	@labels = labels
  	if @labels.empty? == true
  		raise ArgumentError.new("Empty array")
  	end
  end

  def sides
  	@labels.length
  end

  def roll
  	result = @labels[rand(@labels.length)]
  end
end


# Reflection
=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
I didn't really look at the past die class while I was making this one. However when I do look beck it's all essencially the same except I'm working with strings now. It was simpler then because the number of sides was the same as the largest side of the dice.

What does this exercise teach you about making code that is easily changeable or modifiable?
These methods were so small that all changes were quite easy to make. But of course indenting and separating related blocks of code is always visually helpful.

What new methods did you learn when working on this challenge, if any?
I didn't use any new methods for this assignment.

What concepts about classes were you able to solidify in this challenge?
I was having trouble with classes as a whole, so I did the code acadamy course and re-watched the video from last week. This challenge was the first time I was able to confidently use them.
=end
