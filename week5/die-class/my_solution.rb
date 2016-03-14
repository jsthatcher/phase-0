# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [1] hours on this challenge.

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
=begin
What is an ArgumentError and why would you use one?
We can raise ar argumentError to tell the user of the method that they didn't include the correct number of arguments.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
The only new methods I used were rand, which returns a random number in a range, and of course while we were raising the ArgumentError

What is a Ruby class?
A class is a structure that allows you to organize methods into groups,

Why would you use a Ruby class?
If you a methods that would only be used in specific cases you can organize them in a class.

What is the difference between a local variable and an instance variable?
A instance variable will all be treated the same way, but can have many instances.

Where can an instance variable be used?
After a class is initialized you should only be using the instance variables you define.
  
=end