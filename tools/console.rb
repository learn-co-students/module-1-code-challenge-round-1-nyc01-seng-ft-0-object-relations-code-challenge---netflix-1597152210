# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

jaws = Movie.new("Jaws")
inception = Movie.new("Inception")

ray = Viewer.new("raybay1017")
joe = Viewer.new("sausage farma")
jim = Viewer.new("jimbo")

joe_inception = Review.new(joe, inception, 9)
ray_jaws = Review.new(ray, jaws, 8)
joe_jaws = Review.new(joe, jaws, 10)
jim_jaws = Review.new(jim, jaws, 6)







# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
