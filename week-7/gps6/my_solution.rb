# Virus Predictor

# I worked on this challenge [by myself, Irina Renteria with: Lauren Markzon].
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
# loads and references the file. required to run the program. needs to be in the same directory.
# require() only loads once and needs the exact location/file path.

require_relative 'state_data'
# state_data: one hash for states : key (state names: strings)
# values (hash: keys are symbols, values are numbers)

# STATE_DATA is a constant. Can be defined inside or outside a class or methods. 
  # Scope: can be called from anywhere in the program.

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

  def predicted_deaths(population_density, population, state) 
  # predicts amount of deaths based on population density range and rounds down
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
# Reflection Section
# - What are the differences between the two different hash syntaxes shown in the state_data file?
  # The first type of hash syntax is the whole hash itself, it is a hash called STATE_DATA with the
  # state names as the keys and the information inside the curly brackets as the values. The second
  # type of hash syntax in STATE_DATA is that each state is it's own hash, with the name of each
  # state being the name of the hash, the keys are symbols (population/density/etc) and the values
  # are the numbers/stats.
# - What does require_relative do? How is it different from require?
  # Require relative loads and references the file that is required to run the program. The required
  # file needs to be in the same directory as the file that requires it. Require() on the other hand,
  # only loads the file once and needs the exact location/file path.
# - What are some ways to iterate through a hash?
  # We iterated through the hash using each, but you can also use map, each_value, each_key, each_pair,
  # etc. Certain ones are better to use than others depending on the circumstances and what it is you're
  # exactly trying to do. 
# - When refactoring virus_effects, what stood out to you about the variables, if anything?
  # I convinced myself that it didn't need to take in the arguments and that we could just create
  # reader attributes, but that would have meant we would have had to redo some of the classes and
  # such so we decided not to take that approach. But I definitely noticed that they repeated
  # instance variables uneccessarily.
# - What concept did you most solidify in this challenge?
  # I had no idea what require alone was, so learning about that helped solidify my understanding of
  # require_relative. It also helped me solidify why and when we use instance variables, when they're
  # needed, as well as iterating over hashes of different types of syntaxes.