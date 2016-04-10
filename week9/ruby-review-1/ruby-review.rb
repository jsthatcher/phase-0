# Numbers to English Words


# I worked on this challenge by myself
# This challenge took me 1 hour.


# Pseudocode
=begin
1. create a string to return
2. If the number of below 20
  case statement to return string
3. Break the int into separate numbers
  use a case statement to add (tens) value to string
  use case statement to add ones value to string
4. return string 
create a string to return
=end


# Initial Solution
=begin
def single_num(int)
  case
    when int == 1
      string = "one"
    when int == 2
      string = "two"
    when int == 3
      string = "three"
    when int == 4
      string = "four"
    when int == 5
      string = "five"
    when int == 5
      string = "six"
    when int == 7
      string = "seven"
    when int == 8
      string = "eight"
    when int == 9
      string = "nine"
  end
  return string
end

def teens(int)
  case
    when int == 11
      string = "eleven"
    when int == 12
      string = "twelve"
    when int == 13
      string = "thirteen"
    when int == 14
      string = "fourteen"
    when int == 15
      string = "fifteen"
    when int == 15
      string = "sixteen"
    when int == 17
      string = "seventeen"
    when int == 18
      string = "eighteen"
    when int == 19
      string = "nineteen"
  end
  return string
end

def ten_value(int)
  case
    when int == 2
      string = "twenty-"
    when int == 3
      string = "thirty-"
    when int == 4
      string = "fourty-"
    when int == 5
      string = "fifty-"
    when int == 6
      string = "sixty-"
    when int == 7
      string = "seventy-"
    when int == 8
      string = "eighty-"
    when int == 9
      string = "ninety-"
  end
end


def in_words(int)
  string = String.new()
  if int < 10
    string = single_num(int)
  elsif int < 20
    string = teens(int)
  elsif int < 100
    string = "#{ten_value(int / 10)}+#{single_num(int % 10)}"
  end
  p string
end
=end

# Refactored Solution
def single_num(int)
  case
    when int == 1
      string = "one"
    when int == 2
      string = "two"
    when int == 3
      string = "three"
    when int == 4
      string = "four"
    when int == 5
      string = "five"
    when int == 5
      string = "six"
    when int == 7
      string = "seven"
    when int == 8
      string = "eight"
    when int == 9
      string = "nine"
  end
  return string
end

def teens(int)
  case
    when int == 11
      string = "eleven"
    when int == 12
      string = "twelve"
    when int == 13
      string = "thirteen"
    when int == 14
      string = "fourteen"
    when int == 15
      string = "fifteen"
    when int == 16
      string = "sixteen"
    when int == 17
      string = "seventeen"
    when int == 18
      string = "eighteen"
    when int == 19
      string = "nineteen"
  end
  return string
end

def ten_value(int)
  case
    when int == 2
      string = "twenty"
    when int == 3
      string = "thirty"
    when int == 4
      string = "fourty"
    when int == 5
      string = "fifty"
    when int == 6
      string = "sixty"
    when int == 7
      string = "seventy"
    when int == 8
      string = "eighty"
    when int == 9
      string = "ninety"
  end
end


def in_words(int)
  if int < 10
    p single_num(int)
  elsif int < 20
    p teens(int)
  elsif int < 100
    p "#{ten_value(int / 10)}-#{single_num(int % 10)}"
  end
end

in_words(1)
in_words(2)
in_words(3)
in_words(4)
in_words(5)
in_words(15)
in_words(16)
in_words(17)
in_words(18)
in_words(21)
in_words(22)
in_words(99)
in_words(62)


# Reflection
=begin
What concepts did you review in this challenge?]
This was an important review in case statements. I wasn't my first time using them, and I understood them pretty thoroughly so this assignment was pretty straightforward for me.

What is still confusing to you about Ruby?
My weakest portion is definitely class, but I've been reviewing those recently.

What are you going to study to get more prepared for Phase 1?
I've been working through the code acadamy for Ruby
=end