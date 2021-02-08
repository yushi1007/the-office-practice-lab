#require 'pry'
class Role

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    #returns an array of all the Employees who work at that role
    def employees
        Employee.all.select{|employee| employee.role == self}
    
    end
    
    
    def manager
    # get all the manager -> get the instance of manager
    #binding.pry
    self.employee.map{|employee| employee.manager}.uniq
    #self.role.map(&:manager)
    end
    
    def add_employee(name_str, salary, manager)
        Role.new(name_str, salary, manager)
    end 
end

#binding pry
#0