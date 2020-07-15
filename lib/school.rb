# code here!
require 'pry'
class School

  def initialize (name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student (student, grade)
    if @roster[grade] == nil
      @roster[grade] = []
      @roster[grade] << student
    elsif @roster[grade] != nil
      @roster[grade] << student
    end
  end

  def grade (grade)
    @roster[grade]
  end


  def sort
    @roster = @roster.sort.to_h
    @roster.each do |key, value|
#you cannot change @roster by trying to call methods on KEY and VALUE
#KEY and VALUE merely reference properties of @roster
#use KEY and VALUE as information that then can be applied
      @roster[key] = value.sort
    end
  end

end
