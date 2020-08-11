# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


sorcerer = Movie.new("sorcerer's stone")
chamber = Movie.new("chamber of secrets")
azkaban = Movie.new("prisoner of azkaban")
fire = Movie.new("goblet of fire")

harry = Viewer.new("harrypotter")
ron = Viewer.new("ronweasley")
hermione = Viewer.new("hermionegranger")
ginny = Viewer.new("ginnyweasley")

Review.new(harry, sorcerer, 3)
Review.new(ron, sorcerer, 5)
Review.new(harry, chamber, 4)
Review.new(ginny, chamber, 2)
Review.new(ginny, fire, 5)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
