# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

movie1 = Movie.new("Movie1")
movie2 = Movie.new("Movie2")
movie3 = Movie.new("Movie3")
movie4 = Movie.new("Movie4")

viewer1 = Viewer.new("Username1")
viewer2 = Viewer.new("Username2")
viewer3 = Viewer.new("Username3")
viewer4 = Viewer.new("Username4")

review1 = Review.new(viewer1, movie1, 2)
review2 = Review.new(viewer2, movie2, 4)
review3 = Review.new(viewer3, movie3, 6)
review4 = Review.new(viewer4, movie4, 8)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
