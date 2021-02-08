#require 'pry'
class Role

    @@all = []

    attr_reader :name
    attr_accessor :employee, :manager

    def initialize(name)
        @name = name
        @employee = employee
        @manager = manager
        @@all << self
    end

    def self.all
        @@all
    end

    #returns an array of all the Employees who work at that role
    #def employees
    
    #end
    #def employees
     #    binding.pry
    #Employee.all.select{|employee| employee.role == self}
    #end 
    
    def add_employee(name_str, salary, manager)
        Role.new(name_str, salary, manager)
    end 
end

#binding pry
#0