class School
  
  attr_accessor :grade
  attr_reader :school, :roster, :add_student

  
  def initialize(school, roster = {}) 
    @school = school 
    @roster = roster
  end 
    
  def add_student(name, grade)
    if roster.key?(grade) == true
        @roster[grade] << name
    else
        roster[grade] = []
        roster[grade] << name
    end
  end
    
end 
