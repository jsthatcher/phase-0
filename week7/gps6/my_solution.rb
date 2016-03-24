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

#   
  def virus_effects
    
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
      speed = 0.5
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
      speed = 1.0
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
      speed = 1.5
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
      speed = 2.0
    else
      number_of_deaths = (@population * 0.05).floor
      speed = 2.5
    end
    
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
    
        puts " and will spread across the state in #{speed} months.\n\n"
  end

#private

#   method defining the amount of predicted deaths based on three arguments
=begin
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    # IF population density is larger than or equal to 200, so on and so forth.
    # The method floor converts to integer and rounds up or down depending on negative or positive. Makes sure we're not working with decimal or float.
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

#     prints string: state will lose amount of people
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
=end
=begin
#   below defines method with two arguments
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

#     IF the population is between greater than or equal to 200, it adds 0.5 to the speed.
    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
    

    
# outputs string with the speed variable
    puts " and will spread across the state in #{speed} months.\n\n"

  end
=end

end

#=======================================================================

# DRIVER CODE


 # initialize VirusPredictor for each state

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

 # alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
 # alaska.virus_effects

STATE_DATA.each do |state_name, state_info|
  
  state_name = VirusPredictor.new(state_name,state_info[:population_density],state_info[:population])
  
  state_name.virus_effects
end



#=======================================================================
# Reflection Section