# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

mov1 = Movie.new("shark")
mov2 = Movie.new("wave")
mov3 = Movie.new("world")
mov4 = Movie.new("television")

viewer1 = Viewer.new("ted")
viewer2 = Viewer.new("mike")
viewer3 = Viewer.new("tony")

review1 = Review.new(viewer1, mov1, 5)
review2 = Review.new(viewer2, mov2, 3)
review3 = Review.new(viewer3, mov3 ,2)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
