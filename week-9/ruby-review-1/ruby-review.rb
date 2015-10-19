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
    @p0_start_date = start_date
    @cohort_name = cohort
    @students = []
    
  end

  def add_student(name, email)
    @added = @students.push(name)
  end
  
  def remove_student(name)
    @removed = @students.delete(name)
  end
  
  def inspect
    puts "-------------------------"
    puts "Cohort Info"
    puts "-------------------------"
    puts "Students: #{@students}" 
    puts "Cohort: #{@cohort_name}"
    puts "Removed: #{@removed}"
  end  
  
  def currently_in_phase
  end
  
#   def graduated?
#   end
  
end

# class LocalCohort < GlobalCohort
#   def initialize (city)
#     @city = city
#   end
  
# end


# DRIVER CODE
new_cohort = GlobalCohort.new("Bobolinks", )
# p new_cohort.cohort_name

new_student = new_cohort.add_student("Lauren")
new_student = new_cohort.add_student("Jamie")
new_student = new_cohort.add_student("Irina")

new_cohort.remove_student("Lauren")
new_cohort.inspect


# GlobalCohort.p0_start_date = 
# GlobalCohort.immersive_start_date = 
# GlobalCohort.graduation_date = 



# Refactored Solution




# Release 2: Reflect
# - What concepts did you review in this challenge?
  # ...
# - What is still confusing to you about Ruby?
  # ...
# - What are you going to study to get more prepared for Phase 1?
  # ...