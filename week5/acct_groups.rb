=begin
MVP: Method returns groups of three, four, or five.
Input: A array of strings
Output: A array of array's of strings
=end



=begin	--->>> ATTEMPT NUMBER THREE  ----->>>> SUCCSESS
	create final array
	create the subarray
	(number of element) times
		push value from list to subarray
		update counter
		if the counter is above 4
			push the subarray to our final Array
			restore counter
	if the last group has less than three people
		get the last group
		remove two names and add them to the incomplete list
	return finalArray
=end

def group(list)
	finalArray = Array.new(0)
	subArray = Array.new(0)
	memCounter = 0
	groupMemCounter = 0
	groupCounter = 0
	list.length.times do
		subArray.push(list[memCounter])
		memCounter += 1
		groupMemCounter += 1
		if groupMemCounter > 4
			finalArray.push(subArray)
			groupCounter += 1
			groupMemCounter = 0
			subArray = []
			if memCounter == (list.length) and subArray.empty? != true
				finalArray.push(subArray)
				break
			end
		end
	end
	if subArray.length < 3 and subArray.length != 0
		previousGroup = finalArray[groupCounter-1]
		finalArray.pop

		subArray.push(previousGroup[(previousGroup.length-1)])
		previousGroup.pop
		subArray.push(previousGroup[(previousGroup.length-1)])
		previousGroup.pop

		finalArray.push(previousGroup)
		groupCounter += 1
	end
	if subArray.empty? != true
		finalArray.push(subArray)
	end
	print finalArray
end





=begin
ATTEMPT NUMBER ONE ------>>>>>> FAILURE FAILURE FAILURE
PSEUDOCODE:
1. Get number of cells in array
2. If there is a remainder of less than 3 after you divide by 5 MODULE
	If there is a remainder of less than 3 after you divide by 4 MODULE
	 If there is a remainder of less than 3 after you divide by 3 MODULE
	else GROUP INTO 5
	else GROUP INTO 4
	else GROUP INTO 3

def group(list)
	length = list.length
	finalList = Array.new(0)
	counter = 0

	if (length % 5) > 2 or (length % 5) == 0
		#GROUP INTO 5s
		((length / 5)).times do |group|
			subarray = []
			5.times do |name|
				subarray.push(list[counter])
				counter += 1
				print counter
			end
			finalList.push(subarray)
		end
	elsif (length % 4) > 2 or (length % 4) == 0
		#GROUP INTO 4s
		((length / 4)).times do |group|
			subarray = []
			4.times do |name|
				subarray.push(list[counter])
				counter += 1
				print counter
			end
			finalList.push(subarray)
		end
	elsif (length % 3) > 2 or (length % 3) == 0
		#GROUP INTO 3s
		((length / 3)).times do |group|
			subarray = []
			3.times do |name|
				subarray.push(list[counter])
				counter += 1
				print counter
			end
			finalList.push(subarray)
		end
	end
	print finalList
end
=end












=begin 
ATTEMPT NUMBER TWO -------->>>> STARTED OVER
PSEUDOCODE:

HOW MANY GROUPS WILL WE NEED?(groupsNeeded)
	divide the length by 5
		if module is 4 add 1
		if module is 3 add 1
		if module is 2 add 1
		if module is 1 add 2
	return the number of groups needed

WILL WE NEED GROUPS OF THREE? (groupOfThree?)
if the length % 5 is 1 return true
	else return false


If we are using groups of three
	the number of groups of 5 will be length/5 + 2
elsif there are only groups of 5
	the number of groups


create our new 2d Array
groupsNeeded number of times
	create the subarray
	push value from list to subarray
	update counter
	if the counter is above 4
		push the subarray to our final Array
		restore counter

=end

#TESTS FROM Adam Zmudzinski
puts group(["A","B","C"]).to_s
puts group(["A","B","C","D"]).to_s
puts group(["A","B","C","D","E"]).to_s
puts group(["A","B","C","D","E","F"]).to_s
puts group(["A","B","C","D","E","F","G"]).to_s
puts group(["A","B","C","D","E","F","G","H"]).to_s
puts group(["A","B","C","D","E","F","G","H","I"]).to_s
puts group(["A","B","C","D","E","F","G","H","I","J","K"]).to_s
puts group(["A","B","C","D","E","F","G","H","I","J","K","L"]).to_s
puts group(["A","B","C","D","E","F","G","H","I","J","K","L","M"]).to_s
puts group(["A","B","C","D","E","F","G","H","I","J","K","L","M","N"]).to_s
puts group(["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O"]).to_s
puts group(["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P"]).to_s
puts group(["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q"]).to_s
puts group(["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R"]).to_s
puts group(["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S"]).to_s
puts group(["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T"]).to_s

=begin REFLECTION
What was the most interesting and most difficult part of this challenge?
Probably using push and pop for the first time in an assignment.

Do you feel you are improving in your ability to write pseudocode and break the problem down?
Yes, I had three versions of pseudocode this time around, and each time it was more simple than the last.

Was your approach for automating this task a good solution? What could have made it even better?
Using the each method ensured that I at least interated though each name.The real challenge was to ensure there were no groups with less than three members.

What data structure did you decide to store the accountability groups in and why?
I used a two dimentional array which stored the lists of names.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?	
Like I said, this was the first time I had used push and pop while doing an actual asignment. I'm much more familiar with them now. The empty? method also ended up being very helpfull too.
=end


