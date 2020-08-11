# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#viewer
vincent = Viewer.new('Vincent')
lou = Viewer.new('Lou')
tiffany = Viewer.new('Tiffany')

#movie
bad_boys = Movie.new('Bad Boys')
harry_potter = Movie.new('Harry Potter')
jaws = Movie.new('Jaws')

#review
review1 = Review.new(vincent, bad_boys, 4)
review2 = Review.new(lou, harry_potter, 3)
review3 = Review.new(tiffany, jaws, 5)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
