# Your Names
# 1) Jack
# 2) Ben

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  
  #Define number of ingredients needed in a hash and counter variable
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  error_counter = 3
  leftovers = {}
  
  #Iterate through each item in hash and check to see if is it is equal to item_to_make
    
  if library.include? (item_to_make)

    #Get serving size 
    serving_size = library[item_to_make]
    remaining_ingredients = num_of_ingredients % serving_size
    
    #Return number of items made and maybe leftover ingredients
    case remaining_ingredients
    when 0
      return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
    else
      library.each { |key,value|
      if remaining_ingredients/value >= 1
        leftovers[key] = remaining_ingredients/value
      end
      }
      p "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items:"
        case leftovers.length
          when 1
            "#{leftovers["cookie"]} Cookies"
          when 2
            "#{leftovers["cookie"]} Cookies or #{leftovers["cake"]} Cakes"
          when 3
            "#{leftovers["cookie"]} Cookies or #{leftovers["cake"]} Cakes or #{leftovers["pie"]} Pies"
        end
    end
    
    
    else
      raise ArgumentError.new ("#{item_to_make} is not a valid input")
  end
end


#Call method
p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
