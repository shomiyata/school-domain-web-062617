# code here!
require 'pry'

class School



  def initialize(school_name)
    @school_name = school_name
    @@roster = {}
  end

  def roster
    @@roster
  end

  def add_student(name, grade)
    if @@roster.keys.include?(grade)
      @@roster[grade] << name
    else
      @@roster[grade] = []
      @@roster[grade] << name
    end
  end

  def grade(grade)
    @@roster[grade]
  end

  def sort
    sorted_students = {}
    @@roster.map do |grade, student|
      sorted_students[grade] = student.sort
    end
    sorted_students
  end
end
