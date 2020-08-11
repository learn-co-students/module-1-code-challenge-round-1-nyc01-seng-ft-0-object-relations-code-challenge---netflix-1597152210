class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def reviews
    Review.all.select do |review|
      review.movie == self
    end
  end 

  def reviewers
    reviews.map do |review|
      review.viewer 
    end
  end

  def average_rating
    total_rating = reviews.map do |review|
      review.rating 
    end.sum
    total_reviews = self.reviews.count
    total_rating / total_reviews
  end

  def self.highest_rated
    highest_rating = @@all.map do |movie|
      movie.average_rating
    end.max
    @@all.filter do |movie|
      movie.average_rating == highest_rating
    end
  end

  def self.all
    @@all
  end

end
