# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def array_concat(array_1, array_2)


  newArray = Array.new
  counter = 0

  (array_1.length).times do |x|
    newArray[counter] = array_1[x]
    counter = counter + 1
  end

  (array_2.length).times do |y|
    newArray[counter] = array_2[y]
    counter = counter + 1
  end

  newArray
end
