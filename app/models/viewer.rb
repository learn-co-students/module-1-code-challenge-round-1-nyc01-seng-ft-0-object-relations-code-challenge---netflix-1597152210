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
    Review.all.select { |review| review.viewer == self }
  end

  def reviewed_movies
    reviews.map { |review| review.movie } 
  end

  def reviewed_movie?(given_movie)
    reviewed_movies.include?(given_movie)
  end

  def rate_movie(given_movie, rating)
    if reviewed_movie?(given_movie)
      reviews.find { |reviews| if reviews.movie == given_movie; reviews.rating = rating end }
    else
      Review.new(self, given_movie, rating)
    end
  end
end
