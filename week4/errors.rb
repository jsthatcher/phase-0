# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
    end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#errors.rb
# 2. What is the line number where the error occurs?
#170 BUT ACTUALLY 16 or 17
# 3. What is the type of error message?
#Unexpected end of input, there was no END for the while loop(or the method)
# 4. What additional information does the interpreter provide about this type of error?
#It was expecting the keyword end
# 5. Where is the error in the code?
#line 16 or 17
# 6. Why did the interpreter give you this error?
#Because the end of the loop(or method) was not there

# --- error -------------------------------------------------------

south_park = "good"

# 1. What is the line number where the error occurs?
#line 36
# 2. What is the type of error message?
#VariableError
# 3. What additional information does the interpreter provide about this type of error?
#The variable hasn't been defined or initialized
# 4. Where is the error in the code?
#The variable south_park was called before it was defined
# 5. Why did the interpreter give you this error?
#Because the varible dosn't point to anything!

# --- error -------------------------------------------------------

def cartman()

end

# 1. What is the line number where the error occurs?
#51
# 2. What is the type of error message?
#MethodError
# 3. What additional information does the interpreter provide about this type of error?
#The method does not exist
# 4. Where is the error in the code?
#On line 51 the method carman() is called before it is defined.
# 5. Why did the interpreter give you this error?
#Because a undefined method was callled

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase

# 1. What is the line number where the error occurs?
#Line 72
# 2. What is the type of error message?
#ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#There should be 0 arguements but 1 was passed to it
# 4. Where is the error in the code?
#Line 72, there was an unnessecary argument
# 5. Why did the interpreter give you this error?
#Because the definition had a different number of arguemnts than when it was called

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("fuck you!")

# 1. What is the line number where the error occurs?
#87 and 91
# 2. What is the type of error message?
#ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#There should be 1 arguement, but none were passed to it
# 4. Where is the error in the code?
#line 91, when you call the method you need to include the necesarry arguments
# 5. Why did the interpreter give you this error?
#Because the definition have a different number of arguemtns than when it was called



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!','Jack')

# 1. What is the line number where the error occurs?
#Line 112
# 2. What is the type of error message?
#TypeError
# 3. What additional information does the interpreter provide about this type of error?
#There were two necesarry arguements, and the code only included 1 when it was called
# 4. Where is the error in the code?
#line 112 has the wrong number of arguments according to the definitiion of the function
# 5. Why did the interpreter give you this error?
#Because the definition have a different number of arguemtns than when it was called

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
#line 127
# 2. What is the type of error message?
#Type Error
# 3. What additional information does the interpreter provide about this type of error?
#The string can't be coerced
# 4. Where is the error in the code?
#line 127, to use a string a specifc number of times, the nubmer needs to be on the right side of the *.
# 5. Why did the interpreter give you this error?
#Because it didn't know what to do with the string

# --- error -------------------------------------------------------

amount_of_kfc_left = 0


# 1. What is the line number where the error occurs?
#Line 142
# 2. What is the type of error message?
#ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
#A number was divided by 0
# 4. Where is the error in the code?
#The errror was dividing 20 by 0
# 5. Why did the interpreter give you this error?
#Because you can't divide by 0 in Ruby

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#158
# 2. What is the type of error message?
#The function cannot load the file
# 3. What additional information does the interpreter provide about this type of error?
#it shows the path to where it looked for the file
# 4. Where is the error in the code?
#The file the function is looking for does not exist.
# 5. Why did the interpreter give you this error?
#Because it could not find the file


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

#Which error was the most difficult to read?
#The first one gave me the most trouble. I spent 15 minutes on it then gave up and worked on my blog for a bit. Quite embaressing when I figured it out!
#How did you figure out what the issue with the error was?
#The line number usually pointed me to the genral location of the error, and the following info narrowed it down.
#Were you able to determine why each error message happened based on the code?
#Yes! After the first problem I didn't have any more problems 
#When you encounter errors in your future code, what process will you follow to help you debug?
#Reading the error messege fully before looking at the code. There were a few instances where I wasted time because I didn't read the whole messege and had to return after making the incorrect edit.


