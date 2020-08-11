# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end


jaws = Movie.new("Jaws")
wick = Movie.new("John Wick")
commando = Movie.new("Commando")

ryan = Viewer.new("Ryan")
dawn = Viewer.new("Dawn")
sam = Viewer.new("Sam")

r1 = Review.new(ryan, jaws, 4)
r2 = Review.new(dawn, wick, 3)
r3 = Review.new(sam, commando, 2)
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
