class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    roster_grades = roster.collect {|grades,student_arrays| grades }
    if roster_grades.include?(grade)
      roster[grade] << student
    else
      roster[grade] = []
      roster[grade] << student
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each do |grade, student_arrays|
      roster[grade] = student_arrays.sort
    end
    roster
  end

end
