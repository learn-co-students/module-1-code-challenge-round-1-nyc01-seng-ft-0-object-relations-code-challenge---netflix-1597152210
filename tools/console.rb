# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

bob = Viewer.new("Bob123")
jen = Viewer.new("Jen789")

matrix = Movie.new("Matrix")
star_wars = Movie.new("Star Wars")

jen.make_review(matrix, "awesome!")
bob.make_review(star_wars, "great!")
bob.make_review(matrix, "It's green!")





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
