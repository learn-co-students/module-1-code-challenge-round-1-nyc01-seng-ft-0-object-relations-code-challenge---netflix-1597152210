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

  def reviews #returns an array of all the `Review` instances for the `Movie`
    Review.all.select do |review|
      review.movie == self
    end
  end

  def reviewers #returns an array of all of the `Viewer` instances that reviewed the `Movie`
    reviews.map do |review|
      review.viewer
    end
  end

  def average_rating #returns the average of all ratings for the `Movie` instance
    reviews.map do |review|
      review.rating
    end.sum / reviews.length
  end

  def self.highest_rated #returns the `Movie` instance with the highest average rating.
    all.max_by do |movie|
      movie.average_rating
    end
  end
end
