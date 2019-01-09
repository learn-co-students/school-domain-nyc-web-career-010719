class School
  attr_reader :school_name, :roster

  def initialize(school_name)
    @name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    if !@roster.include?(grade)
      @roster[grade] = []
    end
    @roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_roster = {}
    @roster.map { | grade, student_array |
      sorted_roster[grade] = student_array.sort }
    @roster = sorted_roster
  end

end
