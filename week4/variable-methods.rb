def ask_name
	print "What is your first name? ";
	first = gets.chomp!
	print "What is your middle name? ";
	middle = gets.chomp!
	print "What is your last name? ";
	last = gets.chomp!
	p "Hello, #{first} #{middle} #{last}"
end

def ask_number
	print "What is your favorite number? "
	number = Integer(gets.chomp!)
	number += 1
	p "Wouldn't #{number} be better?"
end

=begin
	
How do you define a local variable?
A variable local to the structure that it is in.

How do you define a method?
	A method is a block of code that acomplishes a task.

What is the difference between a local variable and a method?
A local variable just points at its value. A method is more of an action, it does something or like I said above, it acomplishes a task. However both are able to return a value.

How do you run a ruby program from the command line?
	ruby file_name.rb
How do you run an RSpec file from the command line?
	rspec spec-filename.rb
What was confusing about this material? What made sense?
I had a couple issue getting used to the Rspec material. I spend 15 minutes using the ruby command instead of rspec for a portion of the assignment. After working through this however I feel much more confident in my abilities. My reasearching skill are also imporiving and I'm able to look things up more accurately.
	
=end

