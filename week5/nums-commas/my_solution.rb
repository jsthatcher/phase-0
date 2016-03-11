# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? A positive integer
# What is the output? (i.e. What should the code return?)
# A string with commas inserted appropriately 
# What are the steps needed to solve the problem?
=begin
1. Find the number of units
2. Number of commas = integer/3 rounded down
3. Convert integer to string
4. Number of commas times
	Starting from the right move three letter to the left
	place comma
5. return string	
=end


# 1. Initial Solution
=begin
def separate_comma(integer)
	length = integer.to_s().length
	hold = 0
	init_comma =length%3
	remain_commas = (length/3) - 1
	string = integer.to_s()
	unless init_comma == 0
		string.insert(init_comma, ',')
		hold = init_comma + 1
	end
	remain_commas.times do |i|
		hold = hold + 3
		string.insert((hold), ',')	
	end
	string
end

separate_comma(1000000)
=end

# 2. Refactored Solution

def separate_comma(integer)
	length = integer.to_s().length
	hold = 0
	init_comma =length%3
	remain_commas = (length/3) - 1
	string = integer.to_s()
	unless init_comma == 0
		string.insert(init_comma, ',')
		hold = init_comma + 1
	end
	remain_commas.times do |i|
		hold +=  3
		string.insert((hold), ',')	
	end
	string
end


=begin
 3. Reflection
What was your process for breaking the problem down? What different approaches did you consider?
First I thought about the differenct variables that I would need. Second I thought about how I could find the number of commas in a int, and where they would go. Finding the algorithms that acomplish this task was the most difficult part.

Was your pseudocode effective in helping you build a successful initial solution?
Yes, though my step 4 was a little general. It ended up being many more lines of code than the other instructions and needed an additional variable. From my pseudocode you can see I have the general idea of what needs to be done, but was unsure how to impliment it using Ruby.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
My refectored solution is basicly the same as my initial aside from addition on line 62. It was hard enough to pass the tests!
How did you initially iterate through the data structure?
I used the times method so I could ensure that there would never be too many commas, the placement was the part that took the most fiddling with.

Do you feel your refactored solution is more readable than your initial solution? Why?
Not really, there isn't much of a difference.
=end