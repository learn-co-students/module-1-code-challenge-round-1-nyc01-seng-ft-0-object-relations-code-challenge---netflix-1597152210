# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

jallen = Viewer.new("Jallen")
caryn = Viewer.new("Caryn")
meghann = Viewer.new("Meghann")
mov1 = Movie.new("Spirited Away")
mov2 = Movie.new("The Last Jedi")
mov3 = Movie.new("Howl's Moving Castle")
review1 = Review.new(jallen, mov1, 4)
Review.new(caryn, mov1, 5)
Review.new(meghann, mov1, 4)
review2 = Review.new(jallen, mov2, 3)
Review.new(caryn, mov2, 1)
Review.new(jallen, mov3, 5)
Review.new(meghann, mov3, 5)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
