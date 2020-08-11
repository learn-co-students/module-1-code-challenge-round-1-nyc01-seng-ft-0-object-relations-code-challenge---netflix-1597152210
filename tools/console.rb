# require and load the environment file
require_relative '../config/environment.rb'
require "pry"

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

avatar = Movie.new("Avatar")
oldoy = Movie.new("Old Boy")
predator = Movie.new("Predator")






# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
