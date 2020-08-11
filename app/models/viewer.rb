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

  def reviews
    Review.all.select{|e|e.viewer == self}
  end

  def reviewed_movies
    reviews.map{|e|e.movie}.uniq
  end

  def reviewed_movie?(movie)
    reviewed_movies.any?(movie)
  end

  def rate_movie(movie, rating)
    if self.reviewed_movie?(movie)
      self.reviews.map{|e|e.movie == movie and e.rating = rating}
      self.reviews
    else
      Review.new(movie, self, rating)
    end
  end
  
end
