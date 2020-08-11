# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end


#movie

booksmart=Movie.new("Booksmart")
matrix=Movie.new("The Matrix")
lotr=Movie.new("Lord of the Rings: The Fellowship of the Rings")

#viewer
val =Viewer.new("valnuccio")
anthony =Viewer.new("anthonylnuccio")
miriam =Viewer.new("mnuc60")

#review
good=Review.new(booksmart, miriam)
meh=Review.new(matrix, val)
excellent=Review.new(lotr,anthony)






# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
