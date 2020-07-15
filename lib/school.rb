require "pry"
class School
    attr_accessor :roster, :student_name, :school_name, :grade
    def initialize(school_name)
      @school_name = school_name
      @roster = {}
    end
    def add_student(student_name, grade)
       if @roster[grade]
        @roster[grade] << student_name
       else @roster[grade] = []
        @roster[grade] << student_name   
end
    end
def grade(num)
    roster.each do |key, value|
        if key == num 
            return value    
    end
end
end
 
def sort 
    sorted = {}
    roster.each do |key, value|
        sorted[key] = value.sort
        end
        sorted
    end
end


