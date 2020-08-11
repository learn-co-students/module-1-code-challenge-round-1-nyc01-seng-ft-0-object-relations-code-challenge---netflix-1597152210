class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |reviews|
      reviews.movie == self
    end
  end

  def reviewers
    reviews.map do |reviews|
      reviews.viewer
    end
  end
    
  def self.rating_array
    Review.all.map do |review|
      review.rating
    end
  end
  
  def Movie.average_rating
    self.rating_array.sum/ self.rating_array.length
  end
##oops extra methods i guess 

  def movie_average
    ratings_array.sum/ ratings_array.length
  end
  
  def reviews_array
    reviews.map do |reviews|
      reviews.rating
    end
  end

end 
