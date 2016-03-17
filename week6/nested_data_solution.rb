# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

#p array[2][2][3][1]
#p array[2]
#p array[1]
#p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

#p hash[outer:][inner:]["almost"][3]
#p hash[:outer]
#p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

def add5!(array)
  index = 0
  array.each{ |i|
    if(i.is_a? Array)
      add5!(i)
    else
      array[index] = i + 5
    end
    index += 1
  }
end


add5! number_array
#p number_array
# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
def addLy!(array)
  index = 0
  array.each{ |i|
    if(i.is_a? Array)
      addLy!(i)
    else
      array[index] = i + "ly"
    end
    index += 1
  }
end


=begin
What are some general rules you can apply to nested arrays?
It's like an order of operations problem, except you're only using parenthasis. For me it's really important to visualize the blocks of parenthasis, and then it's just like reading non-nested array one after another using the index, or if you're using hashes, keyword.

What are some ways you can iterate over nested arrays?
I took the advice in WGR and used an each method with an if statement inside to check if another array was passed in. Making this resursive ensures that my function can go as deep into nested arrays as it needs.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
No new methods were discovered during this assignment but it was the first time in an assignment where I found recursion was useful. We hadn't worked with recursion in DBC but Adam and I both as used it before using different languages so we felt confident enough to try.

=end
