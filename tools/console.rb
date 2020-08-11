# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

monster_inc = Movie.new("Monster Inc")
despicable_me = Movie.new("Despicable Me")
up = Movie.new("Up")

sam = Viewer.new("sam724")
rob = Viewer.new("rob1201")
caryn = Viewer.new("caryn123")
jallen = Viewer.new("jallen111")

review1 = Review.new(sam, monster_inc, 9)
review2 = Review.new(sam, despicable_me, 7)
review3 = Review.new(rob, monster_inc, 2)
review4 = Review.new(caryn, up, 9)
review5 = Review.new(jallen, up, 1)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
