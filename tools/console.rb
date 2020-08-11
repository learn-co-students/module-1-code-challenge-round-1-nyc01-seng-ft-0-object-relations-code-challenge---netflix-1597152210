# require and load the environment file
require_relative '../config/environment.rb'
require "pry"

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

avatar = Movie.new("Avatar")
oldboy = Movie.new("Old Boy")
predator = Movie.new("Predator")
cars = Movie.new("Cars")

alex = Viewer.new("Alex")
angela = Viewer.new("Angela")
tom = Viewer.new("Tom")
brad = Viewer.new("Brad")

r1 = Review.new(alex, avatar, 4)
r2 = Review.new(angela, predator, 3)
r3 = Review.new(alex, oldboy, 5)
r4 = Review.new(tom, cars, 2)
r5 = Review.new(brad, avatar, 3)





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
