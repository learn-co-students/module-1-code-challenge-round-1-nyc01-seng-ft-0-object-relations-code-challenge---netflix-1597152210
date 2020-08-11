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

  def make_review(movie, rating)
    Review.new(self, movie, rating)
  end

  def reviews
    Review.all.select {|review| review.viewer == self}
  end

  def reviewed_movies
    self.reviews.map {|review| review.movie}
  end
  
end
