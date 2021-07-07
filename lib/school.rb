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
        sorted_roster = {}
        roster.each do |grade, students|
            sorted_roster[grade] = students.sort
        end 
        sorted_roster
    end 
end 

