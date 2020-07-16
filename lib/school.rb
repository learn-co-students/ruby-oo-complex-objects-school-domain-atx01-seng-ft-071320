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
  

   def add_student(name, grade)    
  
      @roster[grade] ||= []
      @roster[grade] << name     
   end

   def grade(grade)   
    @roster[grade] 
   end

 #binding.pry
   def sort 
    sorted_names = {}
    @roster.each do |grade, name|
      sorted_names[grade] = name.sort 
      #binding.pry
    end
     sorted_names
    #binding.pry 
   end

end
