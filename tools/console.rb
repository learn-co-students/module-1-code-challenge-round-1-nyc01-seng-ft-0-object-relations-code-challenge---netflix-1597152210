# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

russell = Viewer.new("Russell")
ed = Viewer.new("Ed")
kay = Viewer.new("Kay")

jojo = Movie.new("Jojo")
okja = Movie.new("Okja")
stardust = Movie.new("Stardust")

russell_jojo = Review.new(russell, jojo, 10)
ed_okja = Review.new(ed, okja, 8)
kay_stardust = Review.new(kay, stardust, 10)
russell_okja = Review.new(russell, okja, 5)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
