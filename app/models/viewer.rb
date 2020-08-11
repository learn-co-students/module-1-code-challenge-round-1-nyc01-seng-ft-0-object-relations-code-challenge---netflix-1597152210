class Viewer

  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  #Given a movie and rating, check to see if a Viewer has a Review for the input Movie.
  #If so, pull that Review and change the :rating attribute
  #If not, make a new Review
  def rate_movie(movie, rating)
    if self.reviewed_movie?(movie)
      self.find_movie_review(movie).rating = rating
    else
      Review.new(self, movie, rating)
    end
  end

  #Pull all reviews associated with THIS Viewer
  def reviews
    Review.all.select {|review| review.viewer == self}
  end

  #Of all Reviews associated with THIS Viewer, pull all the movies
  def reviewed_movies
    self.reviews.map {|review| review.movie}
  end

  #Check to see if this Viewer's Reviews include one for given movie
  def reviewed_movie?(movie)
    self.reviewed_movies.include?(movie)
  end

  #Used as helper for #rate_movie. Pulls Viewer's Review for a given Movie.
  def find_movie_review(movie)
    self.reviews.find {|review| review.movie == movie}
  end
  
end
