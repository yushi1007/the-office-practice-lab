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

    def employees
        binding.pry
    end
    #def manager
    #binding.pry
    #end


end
