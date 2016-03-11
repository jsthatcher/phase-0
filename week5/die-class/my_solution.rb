# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: number of sides
# Output: number of sides, a random number within the range of sides
# Steps: 
# Initialize: Check to see if sides are > 1, if so raise argument error
# Sides: return number of sides
# Roll: return random number between 1 and the number of sides

=begin
# 1. Initial Solution
class Die
  def initialize(sides)
  	if sides > 1
    	@sides = sides
    else
    	raise ArgumentError.new("Impossible sides")
    end
  end

  def sides()
    @sides
  end

  def roll
    rand(@sides) + 1
  end
end
=end


# 3. Refactored Solution

class Die
  def initialize(sides)
  	if sides > 1
    	@sides = sides
    else
    	raise ArgumentError.new("Impossible sides")
    end
  end

  def sides()
    @sides
  end

  def roll
    rand(@sides) + 1
  end
end





# 4. Reflection