require 'pry'
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# think how many instances of what you need -- how to test your code in a best manner

ben = Employee.new("Ben", 25000) # one role, one manager
lisa = Employee.new("Lisa", 100000) # two roles, two managers
mark = Employee.new("Mark", 50000) # one role, one manager
sally = Employee.new("Sally", 60000) # no role

yu = Manager.new("Yu", "Accounting", 35) # managing one
ted = Manager.new("Ted", "Tech", 45) # managing two
bob = Manager.new("Bob", "HR", 22) #managing none
sandra = Manager.new("Sandra", "Design", 56) #managing two

project_manager = Role.new("Project Manager", ben, yu) 
accounts_director = Role.new("Accounts Director", lisa, ted) 
designer = Role.new("Designer", lisa, ted)
copywriter = Role.new("Copywriter", mark, sandra)
coffeemaker = Role.new("Coffee Maker", ben, sandra)

# project_manager.employee
# ben.manager
Employee.all
binding.pry
0 #leave this here to ensure binding.pry isn't the last line