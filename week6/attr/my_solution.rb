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