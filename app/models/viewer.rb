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
    Review.all.select do |review|
        review.viewer == self 
    end 
  end 

  def reviewed_movies
      reviews.map do |viewer| 
          viewer.movie 
      end 
  end 

  def reviewed_movie?(movie)
    if reviewed_movies.include?(movie)
      true 
    else false
    end
  end 

  def rate_movie(movie, rating)
    if reviewed_movie?(movie) 
      review = self.reviews.find do |review|
        review.movie == movie 
      end
      review.rating = rating
    else Review.new(self, movie, rating)
    end
  end
  
end

