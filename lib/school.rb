# code here!

class School

  attr_accessor :name, :roster

  def initialize(name)
   @name = name
   @roster = {}
  end

  def add_student(student_name, grade)
   roster[grade] ||= []
   roster[grade] << student_name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted = {}
    roster.each do|grade, student_array|
      sorted[grade]=student_array.sort
    end
    sorted
  end
  end


school = School.new("Bayside High School")


# roster {
#   9: ["Tim", "Jon"]
#   10: ["Lewis"]
#   11: ["Brian"]
#   12: ["Jordan"]
#  }

# when to use @?
