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
    Review.all.select { |review| review.movie == self }
  end

  def reviewers
    reviews.map { |review| review.viewer }
  end

  def average_rating
    reviews.sum { |reviews| reviews.rating } / reviews.count
  end


  def self.highest_rated
    highest_rated_instance = Review.all.max_by { |review| review.rating }
    highest_rating = highest_rated_instance.rating
    Review.all.map { |review|  if review.rating == highest_rating; review.movie end }.compact
  end
end
