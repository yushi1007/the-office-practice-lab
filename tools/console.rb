require 'pry'
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# think how many instances of what you need -- how to test your code in a best manner

project_manager = Role.new("Project Manager") 
accounts_director = Role.new("Accounts Director") 
designer = Role.new("Designer")
copywriter = Role.new("Copywriter")
coffee_maker = Role.new("Coffee Maker")

yu = Manager.new("Yu", "Accounting", 35) # managing one
ted = Manager.new("ted", "Accounting", 35) # managing two
bob = Manager.new("Bob", "HR", 22) #managing none
sandra = Manager.new("Sandra", "Design", 56) #managing two

ben = Employee.new("Ben", 25000, yu, project_manager) # one role, one manager
lisa = Employee.new("Lisa", 100000, ted, designer) # two roles, two managers
mark = Employee.new("Mark", 50000, sandra, copywriter) # one role, one manager
sally = Employee.new("Sally", 60000, bob, coffee_maker) # no role






# project_manager.employee
# ben.manager
#Employee.all_managers
#ben.employees
#lisa.role
# lisa.manager
# #Employee.paid_over(50000)
#ben.role
#Employee.find_by_department("Design") # expect to get Lisa
# Employee.search_by_role("Designer")
#yu.employees
ted.employees 
yu.roles

binding.pry
#puts "hello"
0 #leave this here to ensure binding.pry isn't the last line