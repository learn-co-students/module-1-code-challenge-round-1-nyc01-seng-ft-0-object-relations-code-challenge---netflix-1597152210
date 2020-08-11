# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
departed = Movie.new("Departed")
adams = Movie.new("Adams")
dark = Movie.new("Dark")

sam = Viewer.new("Sam")
brad = Viewer.new("Brad")
alan = Viewer.new("alan")

r1 = Review.new(sam,departed,9)
r2 = Review.new(brad, departed,8.5)
r3 = Review.new(alan, adams,7.5)
r4 = Review.new(brad, dark, 9)




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
