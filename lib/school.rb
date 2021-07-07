require 'pry'

class School

  attr_accessor :name, :grade

  def initialize(school)
    @school = school
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(student_grade)
    roster[student_grade]
  end

  def sort
    sorted = {}
    roster.each do |students, grade|
      sorted[students] = grade.sort
    end
    sorted
  end
end
