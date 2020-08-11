class Viewer

  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select{|v_reviews| v_reviews.viewer == self}
  end

  def reviewed_movies
    reviews.map{|v_reviews| v_reviews.movie}
  end

  def reviewed_movie?(movie)

  end

  def rate_movie(movie, rating)

  end
  
end
