class Viewer
  attr_accessor :username

  @@all = []

  def self.all
    @@all
  end

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def reviews
    Review.all.select {|review| review.viewer == self}
  end

  def reviewed_movies
    reviews.map {|review| review.movie }
  end
  
  def reviewed_movie?(movie)
    reviewed_movies.include?(movie)
  end

  def rate_movie(movie, rating)
    if reviewed_movie?(movie)
      past = Review.find {|review| review.movie == movie && review.viewer == self} 
      past.rating = rating
    else
      Review.new(self, movie, rating)
    end
  end
end
