require "pry"

class School
   def initialize(school)
     @school = school
     @roster = {}
   end

   def roster
     @roster
   end

   def roster=(roster)
     @roster = roster
   end

   def add_student(name, grade)
     #binding.pry
     if @roster.key?(grade)
       @roster[grade] << name
     else
       @roster[grade] = []
       @roster[grade] << name
     end
     #binding.pry
   end

   def grade(grade)
      @roster[grade]
   end

   def sort
      sorted_roster = @roster.sort.to_h
      final = sorted_roster.each do |key, value|
          value.sort!
          #binding.pry
      end
      final
      #binding.pry
   end

end

school = School.new("Bayside High School")
school.add_student("Zach Morris", 9)
school.add_student("AC Slater", 9)
school.add_student("Kelly Kapowski", 10)
school.add_student("Screech", 11)
school.roster
school.sort
