# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor

  
  # Method that takes three arguments
  def initialize(state_of_origin, population_density, population)
    # Below converts arguments into instance variables
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


  def virus_effects
    predicted_deaths
    speed_of_spread
  end



private
#This means that all methods defined below will be private methods.
#They cannot be accessed from outside of the class. Only methods within the class can use them.

=begin
Define method with two arguments
IF population_density is more than 200
  THEN the number of deaths is 0.4 * popluation rounded to the nearsest int
ELSIF the population_density etc etc.
...

print string with state and number_of_deaths variables (NO NEWLINE)
=end

#method defining the amount of predicted deaths based on three arguments
  # def predicted_deaths
  #   if @population_density >= 200
  #     number_of_deaths = (@population * 0.4).floor
  #   elsif @population_density >= 150
  #     number_of_deaths = (@population * 0.3).floor
  #   elsif @population_density >= 100
  #     number_of_deaths = (@population * 0.2).floor
  #   elsif @population_density >= 50
  #     number_of_deaths = (@population * 0.1).floor
  #   else
  #     number_of_deaths = (@population * 0.05).floor
  #   end

  #   # prints string: state will lose amount of people
  #   print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  # end

=begin
define method with two arguments
define speed variable and set equal to zero
IF population_density is more than 200
  THEN add .5 to speed
ELSIF population_density etc etc...
  ...

print string on same line with the speed variable
=end

#   def speed_of_spread #in months
#     speed = 0.0
#     if @population_density >= 200
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else
#       speed += 2.5
#     end
    
#     puts " and will spread across the state in #{speed} months.\n\n"

#   end
# end


#REFACTORED VERSION
  def predicted_deaths

    if @population_density >= 200
      number_of_deaths_ratio = 0.4
    elsif @population_density >= 150
      number_of_deaths_ratio = 0.3
    elsif @population_density >= 100
      number_of_deaths_ratio = 0.2
    elsif @population_density >= 50
      number_of_deaths_ratio = 0.1
    else
      number_of_deaths_ratio = 0.05
    end

    print "#{@state} will lose #{(@population * number_of_deaths_ratio).floor} people in this outbreak"
  end


  def speed_of_spread #in months
    speed = 2.5
    counter = @population_density
    until counter < 50
      speed -= (0.5)
      counter -= 50
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end
end


#=======================================================================

# DRIVER CODE


#Built in tests:

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

#Method to interate through each state
STATE_DATA.each do |state_name, state_info|
  state_name = VirusPredictor.new(state_name,state_info[:population_density],state_info[:population])
  state_name.virus_effects
end



#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
The syntax in the outer hash is the implicit form. On the leftside of arrow is the keyword and on the right is the keyvalue
The syntax in the innder hash uses an alternate syntax using symbols. A symbol will always be stored in the same place no matter the instance. This saves space, as a string keyword would becreated for each instance of a class.

What does require_relative do? How is it different from require?
The require keyword links the code to another file. It essencially acts as the whole file on that single line.
If relative follows it, that means that the path you use to find it will be from the current directory. Otherwise you would need to use an absoulute path.

What are some ways to iterate through a hash?
We used to each function to go through each element.

When refactoring virus_effects, what stood out to you about the variables, if anything?
The variables were instance variables so they could be accessed throughout the entire class. They didn't have to passed to any of the class methods.

What concept did you most solidify in this challenge?
My refactoring skills definitely improved as well as my understanding of scope within classes.
=end