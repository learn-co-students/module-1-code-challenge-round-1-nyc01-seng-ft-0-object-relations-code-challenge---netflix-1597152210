# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

movie1 = Movie.new("Rosemary's baby")
movie2 = Movie.new("Clockwork Orange")
movie3 = Movie.new("Pulp Fiction")
movie4 = Movie.new("The Grand Budapest Hotel")

viewer1= Viewer.new('marthastewart123')
viewer2= Viewer.new('movieqween')
viewer3= Viewer.new('adamjones')
viewer4= Viewer.new('clarkkent')

review1= Review.new(viewer1, movie1, 9)
review2= Review.new(viewer2, movie1, 4)
review3= Review.new(viewer1, movie3, 3)
review4= Review.new(viewer1, movie2, 1)
review5= Review.new(viewer4, movie2, 5)
review6= Review.new(viewer3, movie2, 2)
review7= Review.new(viewer3, movie4, 10)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
