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
cars = Movie.new("Cars")

alex = Viewer.new("Alex")
angela = Viewer.new("Angela")
tom = Viewer.new("Tom")
brad = Viewer.new("Brad")






# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
