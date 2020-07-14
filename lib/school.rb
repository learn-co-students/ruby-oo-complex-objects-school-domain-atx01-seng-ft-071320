# code here!
class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if @roster[grade] == nil
            @roster[grade] = []
        end
        @roster[grade] << name
    end

    def grade(grade)
        return @roster[grade]
    end

    def sort
        @roster.each_key {|key| @roster[key].sort!}
        return @roster
    end
end