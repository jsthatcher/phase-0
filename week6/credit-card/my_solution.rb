# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: Adam Zmudzinski].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An integer with 16 digits.
# Output: True if valid credit card number.
# Steps:

# define double_other method
# that breaks in an integer into an array
# iterate through the even number of the array, doubling each
# return new array

# define sum_digits method
# iterate through array adding all numbers together
# if larger than 9
# break into smaller digits, add the digits individually to sum
# else
# add integer to sum
# return sum

# define final_check method
# check if sum % 10 == 0
# if it is, return true
# else return false

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits
=begin
class CreditCard

  def initialize(number)
  	if ((Math.log10(number).to_i + 1) != 16)
  		raise ArgumentError.new("Incorrect number of digits")
  	end
    @number = number

  end

  def double_other(number)
    array = number.to_s.split("")
    array.map!{|i| i.to_i}

    array.length.times do |i|
      if(i.even?)
        array[i] *= 2
      end
    end
    array
  end

  def sum_digits(array)
  	sum = 0
  	array.each do |i|
  		sum = sum + i%10
  		if i > 9
  			sum = sum + i/10
  		end
  	end
  	return sum
  end

  def final_check(sum)
  	if sum%10 == 0 
  		return true
  	else
  		return false
  	end

  end

  def check_card
  	final_check(sum_digits(double_other(@number)))
  end

end


card = CreditCard.new(4563960122001999)
p card.check_card()
=end

# Refactored Solution
class CreditCard

  def initialize(number)
  	if ((Math.log10(number).to_i + 1) != 16)
  		raise ArgumentError.new("Incorrect number of digits")
  	end
    @number = number

  end

  def double_other(number)
    array = number.to_s.split("")
    array.map!{|i| i.to_i}

    array.length.times do |i|
       array[i] *= 2 if(i.even?)
    end
    array
  end

  def sum_digits(array)
  	sum = 0
  	array.each do |i|
  		sum = sum + i%10
  		sum = sum + i/10 if i > 9
  	end
  	return sum
  end

  def final_check(sum)
	return sum%10 == 0
  end

  def check_card
  	final_check(sum_digits(double_other(@number)))
  end

end

# Reflection
=begin
What was the most difficult part of this challenge for you and your pair?
Finding a way to split the digits in step two was probably the most difficult. However we found a really efficient way to add both digits to the sum.

What new methods did you find to help you when you refactored?
There wasn't a lot we could do to make this code more efficent. Adam know alot o ruby methods off the top of his head so we could use them in the initial solution.

What concepts or learnings were you able to solidify in this challenge?
I was glad to work with the map function agian to convert the strings back into integers. It seems like a function I'll be using a lot.
=end