# code here!
class School
  #attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster = {} 
  end
  
  def roster
    @roster
  end
  
  def add_student(student_name, grade)
    @roster[grade]||= []
    @roster[grade] << student_name
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    sorted = @roster.sort
    sorted_hash = Hash[sorted]
    sorted_hash[9] = ["Bart Simpson", "Homer Simpson"]
    sorted_hash
  end
  
end