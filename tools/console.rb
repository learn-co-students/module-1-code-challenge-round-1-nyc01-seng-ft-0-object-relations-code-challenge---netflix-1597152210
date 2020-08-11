# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

###### MOVIES ######
m1 = Movie.new("The Shining")
m2 = Movie.new("Rocky Horror Picture Show")
m3 = Movie.new("The Aviator")
m4 = Movie.new("Time")

###### VIEWERS ######
v1 = Viewer.new("sable1183")
v2 = Viewer.new("judy4you")
v3 = Viewer.new("val_of_the_dolls")
v4 = Viewer.new ("blade")

###### REVIEWS ######
r1 = Review.new(m1, v1, 5)
r2 = Review.new(m2, v2, 2)
r3 = Review.new(m3, v3, 3)
r4 = Review.new(m4, v4, 1)
r5 = Review.new(m1, v2, 25)
r6 = Review.new(m3, v4, 7)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
#binding.pry
0
Pry.start
