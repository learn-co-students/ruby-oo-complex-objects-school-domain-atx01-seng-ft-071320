class School 
  def initialize (name)
    @name=name 
    @roster={}
  end 
  
  def roster
    @roster
  end 
  def add_student (name, grade)
    if @roster[grade]==nil
      @roster[grade]=[]
      @roster[grade].push(name) 
    else 
      @roster[grade].push(name)
    end 
  end 
  
  def grade (num)
    @roster[num]
  end 
  
  def sort 
    @roster.each do |grade, names|
      @roster[grade]=names.sort 
    end 
    @roster
      
  end 
end 