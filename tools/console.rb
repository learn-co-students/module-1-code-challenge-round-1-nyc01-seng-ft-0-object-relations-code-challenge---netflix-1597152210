# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
movie1 = Movie.new("movie1")
movie2 = Movie.new("movie2")

viewer1 = Viewer.new("viewer1")
viewer2 = Viewer.new("viewer2")
viewer3 = Viewer.new("viewer3")
viewer4 = Viewer.new("viewer4")
viewer5 = Viewer.new("viewer5")

# review1_1 = Review.new(viewer1, movie1, 5)
# review1_2= Review.new(viewer1, movie2, 1.5)
# review2_1 = Review.new(viewer2, movie1, 4)
# review2_2 = Review.new(viewer2, movie2, 3.2)
# review3_1 = Review.new(viewer3, movie1, 5)
# review3_2 = Review.new(viewer3, movie2, 2)

viewer1.rate_movie(movie1, 5.0)
viewer1.rate_movie(movie2, 1.5)
viewer2.rate_movie(movie1, 4.2)
viewer2.rate_movie(movie2, 3.4)
viewer3.rate_movie(movie1, 5.0)
viewer3.rate_movie(movie2, 2.8)
viewer4.rate_movie(movie1, 4.4)
viewer5.rate_movie(movie2, 2.6)






# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
