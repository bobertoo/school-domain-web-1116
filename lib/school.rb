class School
  attr_reader :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    if !@roster[grade]
      @roster[grade] = []
    end
    @roster[grade] << student_name
  end

  def grade(numb)
    @roster[numb]
  end

  def sort
    @roster.each do |grades, students|
      students.sort!
    end
    @roster
  end
end
