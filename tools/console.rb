# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

movie1 = Movie.new("Dark Knight")
movie2 = Movie.new("Shawshank Redemption")
movie3 = Movie.new("Goodfellas")

viewer1 = Viewer.new("jmesser")
viewer2 = Viewer.new("cmcarth")
viewer3 = Viewer.new("kpark")

review1 = Review.new(viewer1, movie2, 9)
review2 = Review.new(viewer3, movie1, 10)
review3 = Review.new(viewer2, movie3, 7)
review4 = Review.new(viewer2, movie1, 5)
review5 = Review.new(viewer1, movie3, 10)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
