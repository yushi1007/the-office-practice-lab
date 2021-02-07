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
    
end

#binding pry
#0