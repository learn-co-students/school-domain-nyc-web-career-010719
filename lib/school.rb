# code here!
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {} # empty hash
  end

  def add_student(name, grade)
    if @roster[grade] # conditional for adding students
      @roster[grade] << name
    else
      @roster[grade] = [] # else, add rest to the array
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade] # retrieve students by grade
  end

  def sort
    sorted = {} # create empty hash to sort students

    @roster.sort.each do |name, array| # loop through, place names in array
      sorted[name] = array.sort # use empty hash to sort with array
    end
    sorted # call the array
  end
end
