What does puts do?
Puts prints the output to the console on a new line. It returns nothing

What is an integer? What is a float?
Integers are whole numbers whereas floats can keep track of decimal values. Both can be positive and negative.

What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
While using division with floats you can get exact answers down to the decimal place. Because integers can only be whole numbers, when dividing Ruby truncates the remainder. For example 9/2 = 4 (with a truncated remainder of 1) while 9.0/2.0 = 4.5

My Code:
'''
#HOURS IN A YEAR
puts "Hours in a year: #{365 * 24}"

#MINUTES IN A DECADE
puts "Minutes in a decade: #{10 * 365 * 24 * 60}"
'''