require 'pry'
class School

 attr_accessor :name, :roster

def initialize(name)
  @name = name
  @roster = {}
end




def add_student(student_name, grade)
@roster[grade] ||= []
@roster[grade] << student_name
end

def grade(grade)
  return @roster[grade]
end

def sort
  newHsh = {}
  @roster.each do |key, value|
    newHsh[key]=value.sort
  # midway = @roster.sort
  # return midway.to_h
   # midway.map do |key, value|
   # @roster[key] ||= [value]
   #  #binding.pry
end
newHsh
end




#   numArr = []
#   newArr = []
# @roster.each do |ntms, smtn|
#   newArr << ntms
#   newArr << smtn.sort {|a,b| a <=> b}
#   #binding.pry
# end
# return newArr





end
