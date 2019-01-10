# code here!
# code here!
require 'pry'
class School
  attr_reader :school_name
  attr_accessor :student_name, :grade, :roster


  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

def add_student(student_name,grade)
  if @roster[grade] != nil
  @roster[grade] << student_name
else
  @roster[grade] = [student_name]
end
end

def grade(grade)
  @roster[grade]
end


def sort
  @roster.each do |grade, student_name|
    student_name.sort!
end
end

end


# require 'pry'
# class School
#   attr_reader :school_name
#   attr_accessor :student_name, :grade, :roster
#
#
#   def initialize(school_name)
#     @school_name = school_name
#     @roster = {}
#   end
#
# def add_student(student_name,grade)
#   if self.roster[grade] != nil
#   self.roster[grade] << student_name
# else
#   self.roster[grade] = [student_name]
# end
# end
#
# def grade(grade)
#   self.roster[grade]
# end
#
#
# def sort
#   @roster.each do |grade, student_name|
#     student_name.sort!
# end
# end
#
# end
#
# #passes 4 tests
# # def add_student(student_name,grade)
# #   self.roster = {} #same as saying self.roster
# #   @student_name = student_name #do i need this? accessor?
# #   student_arr = []
# #   self.roster = {grade => student_arr}
# #   self.roster[grade] << student_name
# # end
# # end
#
#

# def add_student(student_name, grade)
#   @student_name = student_name
#   #student_arr = []
# #  student_arr << student_name
# #   roster[grade] = []
#   roster[grade] << student_name
#   if roster [grade] == nil
#   roster[grade] = {student_arr}
#   else
#     new_hash[type_of][:style] << style_of
#   end
#   #unless student_arr.include?(student_name)
#   #  roster.each do |grade,student|
#   #  roster[grade] = student_arr
#     #roster[grade] << student_arr
#   #  roster => {grade=>[student_arr]}
# #end
# #end
# end
# end
# #end
# #end
#
#
# #   def add_student(student_name, grade)
# #     roster[student_name] = []
# #     roster[student_name] << grade
# # end
# # end
# # #
# # def grade(grade)
# #   complete_grade =[]
# #   roster.each do |key,value|
# #     complete_grade << value
# #   end
# # end
# #
# # def sort_grade(complete_grade)
# #   complete_grade.sort_gra
# # end
# #
# # end
