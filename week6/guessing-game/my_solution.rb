# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

#GuessingGame#guess
# Input: a guess
# Output: the symbols :low :high and correct:
# Steps: 
#IF guess is larger than answer
	#return :high
#ELSIF guess is smaller than answer
	#return :low
#ELSE
	#return :correct
#solved?




# Initial Solution
=begin
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
  	@guess = guess
  	if @guess > @answer
  		return :high
  	elsif @guess < @answer
  		return :low
  	else
  		return :correct
  	end
  	solved?
  end

  def solved?
  	if @guess == @answer
  		return true
  	else
  		return false
  	end
  end

end
=end
# Refactored Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
  	@guess = guess
  	if @guess > @answer
  		return :high
  	elsif @guess < @answer
  		return :low
  	else
  		return :correct
  	end
  	solved?
  end

  def solved?
  	if @guess == @answer
  		return true
  	else
  		return false
  	end
  end

end

# Reflection
=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
	instance variables and methods represent the attributes and actions related to an instance of our class.

When should you use instance variables? What do they do for you?
	Each time we use our class to define what type of object we are creating, instance variables are created to hold their attributes.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
	Flow control was easy in this challenge as we only had to check if one variable was higher, lower or the same, as another.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?
	I assume that we used a symbol because it's a single object, whereas returning strings would require multiple.
=end