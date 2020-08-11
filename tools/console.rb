# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

###viewer instances

ben = Viewer.new("ben8")
allen = Viewer.new("lucky")
sia = Viewer.new("chandellier_swinger")

##Movie instances

homecoming = Movie.new("Homecoming")
parasite = Movie.new("Parasite")
get_out= Movie.new("Get Out")

#Review instances

rev1 = Review.new(ben, homecoming, 3)
rev2 = Review.new(ben, parasite, 5)
rev3 = Review.new(sia, get_out, 5)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
