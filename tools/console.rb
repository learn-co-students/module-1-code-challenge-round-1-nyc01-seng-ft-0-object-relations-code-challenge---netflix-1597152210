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
hp=Movie.new("Harry Potter and the Half-Blood Prince")

#viewer
val =Viewer.new("valnuccio")
anthony =Viewer.new("anthonylnuccio")
miriam =Viewer.new("mnuc60")

#review
r1=Review.new(miriam, booksmart, 8)
r2=Review.new(val, matrix, 7)
r3=Review.new(anthony, lotr, 7)
r4=Review.new(val,hp, 10)
r5=Review.new(anthony,hp, 8)






# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
