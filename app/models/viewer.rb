class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username.to_s
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |review|
      review.viewer == self
    end
  end

  def reviewed_movies
    reviews.map do |review|
      review.movie
    end
  end

  def find_review_by_movie(movie)
    reviews.find do |review|
      review.movie == movie
    end
      
  end

  def reviewed_movie?(movie)
    if find_review_by_movie(movie)
      true
    else
      false
    end
  end

  def rate_movie(movie, rating)
    if reviewed_movie?(movie)
      find_review_by_movie(movie).rating = rating
    else
      Review.new(self, movie, rating)
    end
  end
  
end
