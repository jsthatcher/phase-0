# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Parker.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array
# Output: Sum of Array
# Steps to solve the problem.

=begin

sum

step the array
extract the number
add the number to the sum
end loop

return sum
	




# 1. total initial solution

def total(array)
	sum = 0
	array.each do |x|
		sum = sum + x
	end
	sum
end

=end

# 3. total refactored solution

def total(array)
	array.inject {|sum,n| sum + n}
	end



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Array of strings
# Output: A single string with a capitialized first word and a period at the end.
# Steps to solve the problem.

=begin
	
get first string and capitalize
join the array with spaces in between
add period
=end


# 5. sentence_maker initial solution

def sentence_maker(array)
	array[0].capitalize!
	finalString = array.join(' ')
	finalString = finalString + '.'
end



# 6. sentence_maker refactored solution

We did it first try!
