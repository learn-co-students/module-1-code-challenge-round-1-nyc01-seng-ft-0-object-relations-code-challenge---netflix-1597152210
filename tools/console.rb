# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

matrix = Movie.new('matrix');
kain = Viewer.new('kain');
review_kain_matrix = Review.new(kain, matrix, 10)
kubo = Movie.new('kubo');
reviewKubo = Review.new(kain, kubo, 4)
kain2 = Viewer.new('kain2')
review2_kain_matrix = Review.new(kain2, matrix, 900)

dingo = Movie.new('dingo')
review3 = Review.new(kain2, dingo, 200);



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry

