# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

howlsmovingcastle = Movie.new "Howl's Moving Castle"
suspiria = Movie.new "Suspiria"
addamsfamily = Movie.new "The Addams Family"
corpsebride = Movie.new "Corpse Bride"
soundofinsects = Movie.new "The Sound of Insects"

kevin = Viewer.new "@kevrox"
raemond = Viewer.new "@raerae"
isabella = Viewer.new "@is-a-bella96"
niyah = Viewer.new "@niyah_forever"

re_isabella = Review.new isabella, suspiria, 8
re_kevin = Review.new kevin, howlsmovingcastle, 9
re_raemond = Review.new raemond, addamsfamily, 7
re_kevin2 = Review.new kevin, corpsebride, 6
re_niyah = Review.new niyah, soundofinsects, 7
re_isabella = Review.new isabella, howlsmovingcastle, 10
re_raemond2 = Review.new raemond, soundofinsects, 4


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
