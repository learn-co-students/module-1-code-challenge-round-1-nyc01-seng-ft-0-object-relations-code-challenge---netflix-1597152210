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
dumbo = Movie.new("Dumbo")

jen.rate_movie(matrix, 4)
bob.rate_movie(star_wars, 5)
bob.rate_movie(matrix, 3)





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
