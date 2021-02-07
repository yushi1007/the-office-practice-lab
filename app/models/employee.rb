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

end
