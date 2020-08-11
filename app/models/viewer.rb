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
    Review.all.select do |reviews|
      reviews.viewer == self
    end
  end

  def reviewed_movies
    reviews.map do |reviews|
      reviews.movie 
    end
  end

  def reviewed_movie?(movie)
    if reviewed_movies.include?(movie)
      true
    else
      false
    end
  end

  def rate_movie(movie, rating)
    if !reviewed_movie?(movie)
      Review.new(self, movie, rating)
    elsif reviewed_movie?(movie) == true
        Review.new(self, movie, rating)
    end
end

#not quite 


end
