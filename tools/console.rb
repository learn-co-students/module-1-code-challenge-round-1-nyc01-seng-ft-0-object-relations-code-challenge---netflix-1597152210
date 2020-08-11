# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

require_relative '../app/models/movie.rb'
require_relative '../app/models/review.rb'
require_relative '../app/models/viewer.rb'

darkknight = Movie.new("The Dark Knight")
inception = Movie.new("Inception")
parasite = Movie.new("Parasite")

erik = Viewer.new("erik")
derek = Viewer.new("derek")
mahir = Viewer.new("mahir")

review1 = Review.new(erik, darkknight, 1)
review2 = Review.new(erik, inception, 2)
review3 = Review.new(erik, parasite, 3)
review4 = Review.new(derek, darkknight, 4)
review5 = Review.new(derek, inception, 5)
review6 = Review.new(derek, parasite, 6)
review7 = Review.new(mahir, darkknight, 7)
review8 = Review.new(mahir, inception, 8)
review9 = Review.new(mahir, parasite, 9)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
