# Virus Predictor

# I worked on this challenge [by myself, Irina Renteria with: Lauren Markzon].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'
# loads and references the file. required to run the program. needs to be in the same directory.
# require() only loads once and needs the exact location/file path.

# state_data: one hash for states : key (state names: strings)
# values (hash: keys are symbols, values are numbers)

# STATE_DATA is a constant. Can be defined inside or outside a class or methods. Scope: can be called from anywhere in the program.

class VirusPredictor

  def initialize(state_of_origin, population_density, population) # method with three arguments. 
                                                                  #defines instance variables for the class
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
    # calls two methods and combines their outputs to list a report.
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private

  def predicted_deaths(population_density, population, state) # predicts amount of deaths based on population density range and rounds down
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor # always rounds down (.ceiling rounds up)
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread(population_density, state) #in months
    # predicts speed of spread based on population density range.

    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

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

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |state_name, state_info|
  states = VirusPredictor.new(state_name, state_info[:population_density], state_info[:population])
states.virus_effects
end
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


# #=======================================================================
# # Reflection Section