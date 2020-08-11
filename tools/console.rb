# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#movie list
ring = Movie.new("Ring")
rush_hour = Movie.new("Rush Hour")
pokemon = Movie.new("Pokemon")
titanic = Movie.new("Titanic")
mha = Movie.new("My Hero Academia")

#viewer list
monica = Viewer.new("Monica")
chandler = Viewer.new("Chandler")
fred = Viewer.new("Fred")
jose = Viewer.new("Jose")
erin = Viewer.new("Erin")

#reviews
rev1 = Review.new(monica, titanic, 9)
rev2 = Review.new(fred, pokemon, 7)
rev3 = Review.new(chandler, ring, 2)
rev4 = Review.new(erin, mha, 8)
rev5 = Review.new(chandler, titanic, 5)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
