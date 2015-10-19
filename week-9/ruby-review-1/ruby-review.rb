# Release 1: Complete the challenge
# Introduction to Inheritance

# I worked on this challenge [with: Irina/Jamie].


# Pseudocode
#  1. for class GlobalCohort: 
#         - define attr_accessor for all attributes, except location
#  2. for class LocalCohort: 
#         - inherit attributes from GC
#         - define attr_accessor location
#  3. define method add_student to add student to cohort
#  4. define method remove_student to remove student from cohort
#  5. define method currently_in_phase that calculates phase (0, 1, 2, or 3) based on date

#      - def currently_in_phase
#          current_date = __
#          immersive_start_date = p0_start_date + 9 weeks
#          graduation_date = immersive + 9 weeks

#       if current_date = p0 RANGE
#           p "Phase 0"
#       else current_date = immersive range
#           p "immersive"
#       end

# 

#  6. define method to check if graduated

#       - def graduated?
#         current_date = __
#         if current_date = graduation_date
#            p "graduated"
#         else "not graduated yet"
#         end


# Initial Solution
class GlobalCohort
  attr_accessor :p0_start_date, :immersive_start_date, :graduation_date, :students, :cohort_name
  def initialize(cohort, start_date)
    require 'date'
    @p0_start_date = Date.parse(start_date)
    @immersive_start_date = @p0_start_date + 63
    @graduation_date = @p0_start_date + 123
    @phase0 = @p0_start_date..@p0_start_date + 62
    @phase1 = @immersive_start_date..@immersive_start_date + 20
    @phase2 = @immersive_start_date + 21..@immersive_start_date + 41
    @phase3 = @immersive_start_date + 42..@graduation_date
    @cohort_name = cohort_name
    @students = {}
    @students["Chicago"] = []
    @students["NYC"] = []
    @students["SF"] = []
    
  end

  def add_student(name, city)
    @added = @students[city].push(name)
  end
  
  def remove_student(name, city)
    @removed = @students[city].delete(name)
  end
  
  def inspect
    puts "-------------------------"
    puts "Cohort Info"
    puts "-------------------------"
    puts "Students: #{@students}"
    puts "Start: #{@p0_start_date}"
    puts "Immersive: #{@immersive_start_date}"
    puts "Graduation: #{@graduation_date}"
    puts "Phase 1: #{@phase1}" 
    puts "Phase 2: #{@phase2}" 
    puts "Phase 3: #{@phase3}"
    puts "Cohort: #{@cohort_name}"
    puts "Removed: #{@removed}"
  end    
  
  def currently_in_phase
    @current_date = Date.today

    case
    when @phase0 === @current_date then puts "Phase: 0"
    when @phase1 === @current_date then puts "Phase: 1"
    when @phase2 === @current_date then puts "Phase: 2"
    when @phase3 === @current_date then puts "Phase: 3"
    end
  end
  
  def graduated?
    case 
    when @current_date >= @graduation_date then puts "Cohort graduated."
    else puts "Cohort has not yet graduated."
    end
  end
  
end

# class LocalCohort < GlobalCohort
#   def initialize (city)
#   end
  
# end

# DRIVER CODE
new_cohort = GlobalCohort.new("Bobolinks", '2015-10-1')
# p new_cohort.cohort_name

new_student = new_cohort.add_student("Lauren", "Chicago")
new_student = new_cohort.add_student("Jamie", "Chicago")
new_student = new_cohort.add_student("Irina", "Chicago")

new_cohort.remove_student("Lauren", "Chicago")
new_cohort.currently_in_phase
new_cohort.graduated?
new_cohort.inspect


# Release 2: Reflect
# - What concepts did you review in this challenge?
  # We reviewed Ruby methods in general, but more specifically working with classes
  # and inheritance properties. I still need a solid amount of review with this, as 
  # much of my knowledge of Ruby is still a bit mixed in with JavaScript.
# - What is still confusing to you about Ruby?
  # I have a basic understanding of most of the syntax and defining methods, etc. but
  # it's the deeper understanding that just isn't there for me yet. I don't feel
  # completely confident with Ruby, to the point of confidence I feel with HTML and
  # CSS. 
# - What are you going to study to get more prepared for Phase 1?
  # Just going to work on ruby excersizes over and over to make sure I can remember 
  # everything. I'm also going to work on cheatsheets and researching so I can better
  # look things up if I ever don't understand something.