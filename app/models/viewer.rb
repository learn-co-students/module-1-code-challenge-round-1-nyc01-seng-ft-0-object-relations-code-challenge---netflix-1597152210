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
    Review.all.filter {|reviews| reviews.viewer == self}
  end

  def reviewed_movies
    Review.all.filter do |reviews|
      if reviews.viewer == self
        reviews.movie
      end
    end
  end

  def reviewed_movie?(movie)
    self.reviewed_movies.include?(movie)
  end

  def rate_movie(movie, rating)
    if self.reviewed_movie?(movie)
      rating = Review.rating
    else
      Review.new(self, movie, rating)
    end
  end
  
end
