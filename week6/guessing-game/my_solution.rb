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






# Reflection