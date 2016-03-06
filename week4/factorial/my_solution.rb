# Factorial

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def factorial(number)
 # Your code goes here
 product = number
 if number == 0
     product = 1
 end
 while number > 1
     product = product * (number - 1)
     number = number - 1
 end
 product
end