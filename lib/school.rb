require 'pry'
class School
    def initialize(roster)
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        @roster[grade] ||= []
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        new_hash = { }
        @roster.each do |grade, name|
        new_hash[grade] = name.sort
        end
        new_hash
    end

end
