# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

titanic = Movie.new("Titanic")
starwars = Movie.new("Star Wars")
joanna = Viewer.new("Joanna")
steve = Viewer.new("Steve")
review = Review.new(steve, titanic, 3.5)
review = Review.new(joanna, starwars, 4.3)
review = Review.new(joanna, titanic, 3.2)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
