require 'pry'
class Employee
    
    @@all = []

    attr_accessor :name, :salary, :employees

    def initialize(name, salary)
        @name = name
        @salary = salary
        @@all << self
    end

    def self.all
        @@all
    end

<<<<<<< HEAD
    def employees
        binding.pry
    end
    #def manager
    #binding.pry
    #end


=======
        #1. pass argumet of employees name 
        #2. itirate over all roles and return that employees   roles instances 
        # returns an instance of their manager
        
    def self.employees(name)
        Role.all.select{|role| role.employee.name == name}
    end 


    # def manager 
    #     self.employees.map
    # end 

>>>>>>> 04a64f1138ad1c05518029d8c54eea9115602159
end
