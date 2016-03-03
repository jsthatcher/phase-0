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

