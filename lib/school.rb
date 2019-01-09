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

  
end

binding.pry
true
