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
    Review.all.filter do |review|
      review.viewer == self
    end
  end

  def reviewed_movies
    self.reviews.map do |review|
      review.movie 
    end
  end

  def reviewed_movie?(movie)
      reviewed = []
    self.reviewed_movies.map do |movies|
      if movies == movie
        reviewed << true
      else
        reviewed << false
      end
    end
    reviewed.include?(true)
  end

  def rate_movie(movie, rating)
    self.reviews.select do |review|
      if review.movie == movie
        review.rating = rating
      else
        Review.new(self, movie, rating)
    end
  end
  end




  
end
