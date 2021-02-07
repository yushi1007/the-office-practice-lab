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

end
