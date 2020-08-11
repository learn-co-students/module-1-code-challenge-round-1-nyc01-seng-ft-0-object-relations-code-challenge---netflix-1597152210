# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# MOVIES

starwars = Movie.new("Star Wars")
toystory = Movie.new("Toy Story")
usualsuspects = Movie.new("Usual Suspects")
phantom = Movie.new("Phantom")

# USERS

adam = Viewer.new("Adam")
beth = Viewer.new("Beth")
renee = Viewer.new("Renee")
tony = Viewer.new("Tony")

adam_sw = Review.new(adam, starwars, 3.0)
beth_sw = Review.new(beth, starwars, 4.0)
tony_sw = Review.new(tony, starwars, 5.2)

renee_ts = Review.new(renee, toystory, 4)
adam_ts = Review.new(adam, toystory, 2) # I did like it.. don't worry
adam_us = Review.new(adam, usualsuspects, 5)
tony_us = Review.new(tony, usualsuspects, 5)

renee_ph = Review.new(renee, phantom, 0.3)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
