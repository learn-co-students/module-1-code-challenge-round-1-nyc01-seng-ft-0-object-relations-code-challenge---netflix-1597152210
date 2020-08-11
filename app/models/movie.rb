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
    Review.all.select{|review| review.movie == self}
  end

  def reviewers
    reviews.map {|review| review.viewer}
  end

  def average_rating
    reviews.reduce(0){|sum , review| sum + (review.rating/reviews.length)}
  end

  def highest_rated
    self.reviews.max{|a, b| a.rating <=> b.rating}
  end
end
