class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def reviews
    Review.all.select {|review|review.viewer==self}
  end

  def reviewed_movies
    reviews.map{|review|review.movie}
  end

  def reviewed_movie?(movie)
    reviewed_movies.any? {|i| i == movie}
  end

  def rate_movie(movie,rating)
    if reviewed_movie?(movie) == false
      Review.new(self, movie, rating)
    # else 
    #   movie.reviews.rating=rating ugh this isn't working but this is where I was going with it. 
    end
  end





  def self.all
    @@all
  end
  
end
