#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
	attr_writer :name

	def initialize(name)
		@name = name
	end
end


class Greetings
	def initialize(name)
		@nameData = NameData.new(name)
	end

	def hello
		puts "#{@nameData}"
	end
end


greet = Greetings.new("jack")
greet.hello



# Reflection
=begin
What are these methods doing?
This release shows us how we can write instance variables as well as read them. The change_my functions are using the most basic way to show that variables are being passed in. In the future we'll be using somthing like attr_writer or attr_accessor

How are they modifying or returning the value of instance variables?
This code uses writer methods to show that the instance variables will be able to be modified.
=end
=begin
What changed between the last release and this release?
This release we used the simplified language so now we can find the value of the instance variable by calling the funtion of the same name.

What was replaced?
The what_is_age function is no longer needed.

Is this code simpler than the last?
Yes, and shorter as well!
=end
=begin
What changed between the last release and this release?
Now we have a shortcut for the writer method as well. Instead of writting it out we used attr_writer which means we can change the instace variable by calling the method of the same name. The difference between calling the reader is that we set this method equal to our intended value.

What was replaced?
We no longer need the change_age method

Is this code simpler than the last?
Yes, and shorter!
=end
=begin
What is a reader method?
A reader method is a method that takes information into the function.

What is a writer method?
A writer method can change the value of a variable but cannot read it.

What do the attr methods do for you?
These methods allow us to do both read in information, as well print it out into different varaibles.

Should you always use an accessor to cover your bases? Why or why not?
No! Some somefuntions only need one of these functions. Allowing all methods to both read and write could compromise the security of project. Your code should do exactly what it should, and nothing else.

What is confusing to you about these methods?
The last release was difficult for me. Passing information between classes was a challenge, but I worked my way through it.
	
=end