=begin
MVP: Method returns groups of three, four, or five.
Input: A array of strings
Output: A array of array's of strings

PSEUDOCODE:
1. Get number of cells in array
2. If there is a remainder of less than 3 after you divide by 5 MODULE
	If there is a remainder of less than 3 after you divide by 4 MODULE
	 If there is a remainder of less than 3 after you divide by 3 MODULE
	else GROUP INTO 5
	else GROUP INTO 4
	else GROUP INTO 3

GROUPINTO

	
=end

def group(list)
	length = list.length
	finalList = Array.new(0)
	counter = 0

	if (length % 5) > 2 and (length % 5) != 0
		((length / 5)+1).times do |group|
			subarray = []
			5.times do |name|
				subarray.push(length[counter])
				counter =+ 1
			end
			finalList.push(subarray)
		end
	elsif length % 4 > 2
		#GROUP INTO 4
	elsif length % 3 > 2
		#GROUP INTO 3
	end

	print finalList
	print list

end





#tests FROM Adam Zmudzinski
=begin
puts group(["A","B","C"]).to_s
puts group(["A","B","C","D"]).to_s
puts group(["A","B","C","D","E"]).to_s
puts group(["A","B","C","D","E","F"]).to_s
puts group(["A","B","C","D","E","F","G"]).to_s
puts group(["A","B","C","D","E","F","G","H"]).to_s
puts group(["A","B","C","D","E","F","G","H","I"]).to_s
=end
puts group(["A","B","C","D","E","F","G","H","I","J"]).to_s