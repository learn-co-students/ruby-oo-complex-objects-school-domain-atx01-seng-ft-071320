require 'pry'


class School 

    def initialize(school)
        @school = school
        @roster =  {}
    end 

    def roster
        @roster 
    end 

    def add_student(name, grade)
        @grade = grade
        @name = name
        @roster[grade]||= []
        @roster[grade] << name 
    end 

    def  grade(grade)
        @roster[grade]
    end 

    def sort 
        # sorted_roster = {}
        # sorted_roster = @roster.sort.to_h
        @roster.each do |key, array|
            array.sort!
        end 
    end 
end 