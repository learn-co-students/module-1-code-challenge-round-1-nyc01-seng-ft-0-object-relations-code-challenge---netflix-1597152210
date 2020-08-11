# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
yeah = Movie.new("Yeah")
moovie = Movie.new("Moovie")
sitting = Movie.new("Sitting")

cool_guy = Viewer.new("cool_guy")
movie_watcher = Viewer.new("movie_watcher")
reviewer22 = Viewer.new("reviewer22")

new_review = Review.new(cool_guy, yeah, 2)
other_review = Review.new(movie_watcher, moovie, 5)
review2 = Review.new(reviewer22, moovie, 1)
review555 = Review.new(cool_guy, sitting, 6)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
