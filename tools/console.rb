require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# think how many instances of what you need -- how to test your code in a best manner

binding.pry
0 #leave this here to ensure binding.pry isn't the last line