# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


jen = Viewer.new("Jen86")
ted = Viewer.new("Ted72")
bill = Viewer.new("Bill92")
fred = Viewer.new("Fred89")

jaws = Movie.new("Jaws")
big = Movie.new("Big")
jump = Movie.new("Jump")
free = Movie.new("Free Willy")

r1 = Review.new(jen, jaws, 5)
r2 = Review.new(jen, big, 3)
r3 = Review.new(jen, jump, 2)
r4 = Review.new(ted, jaws, 4)
r5 = Review.new(ted, free, 1)
r6 = Review.new(bill, jump, 5)
r7 = Review.new(fred, free, 3)
r8 = Review.new(fred, big, 4)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
