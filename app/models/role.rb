#require 'pry'
class Role

    @@all = []

    attr_reader :name
    attr_accessor :employee, :manager

    def initialize(name, employee, manager)
        @name = name
        @employee = employee
        @manager = manager
        @@all << self
    end

    def self.all
        @@all
    end
    
    def add_employee(name_str, salary, manager)
        Role.new(name_str, salary, manager)
    end 
end

#binding pry
#0