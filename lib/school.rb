# code here!
require 'pry'

class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student_name, grade)
    @roster[grade] ||= []
     # ||= basically says if the @roster[grade] is empty it will = []
     # if @roster[grade] = "something" it will stay = "something"
    @roster[grade] << student_name
  end

  def grade(grade)
    @roster.fetch(grade)
  end

  def sort
    @roster.each_value do |names|
      names.sort!
    end
  end

end
