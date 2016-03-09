# Pad an Array

# I worked on this challenge with Ben Sanecki

# I spent [1] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? array, min_size, value
# What is the output? (i.e. What should the code return?)
# array
# What are the steps needed to solve the problem?

=begin
if the array length is >= min_size
	END
else Loop until array.length == min_size
	Add value to end of array
	

	
=end


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
  	return array
  else
  	until array.length == min_size
  		array.push(value)
  	end
  	return array
  end
end

def pad(array, min_size, value = nil) #non-destructive
	newArray = Array.new(array)
    if newArray.length >= min_size
  		return newArray
  	else
  		while newArray.length < min_size
  			newArray << value
  		end
  		return newArray
  	end
end



# 3. Refactored Solution



# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?
Yes, breaking down the steps made us much more confident when first writting the code.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
There wern't anyhuge difficulties translating it, though our psudocode used syntax from languages, which might have inadvertantly caused some language confusion errors.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
	The largest issue we had to solve was that our non-destructive method was returning the origional array. Our problem ended up being that we had not created a new array, just assigned the value of the original array to it.

When you refactored, did you find any existing methods in Ruby to clean up your code?
We started using methods so there wern't any changes that we could think of making. At one point we pushed our value to the end of the array instead of using '<<' but that was just hoping it was the syntax error we were looking for.

How readable is your solution? Did you and your pair choose descriptive variable names?
All of the variable names were chosen for us except for newArray.

What is the difference between destructive and non-destructive methods in your own words?
Destructive methods return an altered form of the argument passed in. A non-destructive method returns a new variable, and dosen't effect the parameter passed in.
=end