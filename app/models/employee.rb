require 'pry'
class Employee
    
    @@all = []

    attr_accessor :name, :salary

    def initialize(name, salary, manager, role)
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
    #binding.pry
    self.role.map{|role| role.manager}
    #self.role.map(&:manager)
    end
    def self.paid_over(salary)
        # binding.pry
        self.all.select{|employee| employee.salary >= salary} 
    end

    # def self.find_by_department(department)
    #   # Manager.all.find{|manager| manager.department == "Design"}
    # # Role.all.find{|role| role.manager.department == "Design"}  
    #   binding.pry
    # end

    # def self.search_by_role(role_name)
    #     binding.pry
    # end
end



# Employee.find_by_department
# takes a String argument that is the name of a department 
# and returns the first employee whose manager is working in that department 
#1. iterate over managers to match department
#2. return managers employee

# Employee.search_by_role
# takes a String argument that is the name of a role and returns all the employees who work at that role

# Employee#get_promoted
# takes an argument of an instance of a Role, updates Employee's role and increases Employee's salary.​
