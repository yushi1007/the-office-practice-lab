require 'pry'
class Manager
    
    @@all = []

    attr_accessor :name, :department, :age

    def initialize(name, department, age)
    @name = name
    @department = department
    @age = age
    @@all << self
    end

    def self.all
        @@all    
    end

    def employees 
    #binding.pry 
    #Select all the employees that the manager oversees
    Employee.all.select{|employee| employee.manager == self}
    end

    def roles
    Role.all.select{|role| role.manager == self}
    end
    
    def self.all_department
    self.all.map{|manager| manager.department}.uniq
    end
end

#binding pry
#0