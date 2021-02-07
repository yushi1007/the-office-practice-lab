require 'pry'
class Employee
    
    @@all = []

    attr_accessor :name, :salary

    def initialize(name, salary)
        @name = name
        @salary = salary
        @@all << self
    end

    def self.all
        @@all
    end
    # returns an instance of their manager
    def role
    # get all the employee's role
    # binding.pry
        Role.all.select{|role| role.employee == self}
    end

    def manager
    # get all the manager -> get the instance of manager
    # binding.pry
    self.role.map{|role| role.manager}
    #self.role.map(&:manager)
    end


   # def role
       # binding.pry
    #end
end
