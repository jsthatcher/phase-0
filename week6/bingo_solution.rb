# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:
=begin
# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  Create array of chars including (b, i, n, g, o)
  Find random number between 0 and 4 ----->> ranChar
  Access value at that index
  Find random number between 0 and 99 ----- >> ranNum
  return both values as one

# Check the called column for the number called.
  #iterate through super array
  #IF ranNum == subArray[ranChar]
    return TRUE
  ELSE
    return FALSE

# If the number is in the column, replace with an 'x'
  subArray[ranChar] = "x"
  We can do this inside of the if statement
  

# Display a column to the console
  Iterate through superArray
    print subArray[ranChar]

# Display the board to the console (prettily)
  Iterate through superArray
    Iterate through subArray
      print subArray[i]
      print ","
    puts ""    #newline  

=end

# Initial Solution

class BingoBoard

  @ranChar = 0
  @ranNum = 47

  def initialize(board)
    @bingo_board = board
  end


  def call()
    bingoChars = ["B","I","N","G","O"]
    @ranChar = rand(5) - 1
    @ranNum = rand(99)
    print "The number is: "
    print bingoChars[@ranChar]
    puts @ranNum
  end

  def check()
    @rowCount = 0
    @bingo_board.each do |subArray|
      if @ranNum == subArray[@ranChar]
        return true
        @rowCount += 1
      end
    end
  end

  def replace()
    @bingo_board[@rowCount][@ranChar] = "XX"
  end 

  def printOut()
    @bingo_board.each do |subArray|
      subArray.each do |item|
        print item
        print " "
      end
      puts " "
    end
  end

  def play()
    call()
    if check() == true
      puts "Board Updated!"
      puts 
      replace()
      printOut()
    end
  end


end

# Refactored Solution


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.play



#Reflection
=begin
 How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
  The more I pseudocode the better I get. I've been paying attention not ot use language specific words, and capitalizing keywords.

What are the benefits of using a class for this challenge?
Because we do this within a class, we know that these methods only work with this type of variable.

How can you access coordinates in a nested array?
I first used a counter to find what row we were in. This told we what subArray we were in. Then I could use the ranChar to know what element to access within the subArray.

What methods did you use to access and modify the array?
When modifying the array I was able to simply point to the variable holding the vaue and replace it.

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
I took at look at the ternary operator. Though I didn't implement it because the only if statement I used didn't have an else attatched to it. If I had I could have made those lines shorter and more readable.

How did you determine what should be an instance variable versus a local variable?
Instance variables were used throughout the class and in different methods. Local variables are only used within a single method. BingoChars local because we only needed it to see what letter it represented. Otherwise we refered to it's location with an index. Local variables were also used whenever I had to iterate through the entire board. The subArray were only needed within that method so they were made local.

=end

