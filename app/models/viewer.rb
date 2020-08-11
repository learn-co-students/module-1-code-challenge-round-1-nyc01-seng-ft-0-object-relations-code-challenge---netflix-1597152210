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

  def rate_movie(movie, rating)
  end

  def reviews 
    Review.all.filter do |review|
      review.movie = self
    end
  end
  
end
