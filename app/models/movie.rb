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
    reviews.map{|review| review.viewer}
  end

  def average_rating
    reviews.reduce(0){|sum, review| sum + (review.rating/reviews.length)}
  end

  def self.highest_rated
    all.max{|a, b| a.average_rating<=>b.average_rating}
  end

end
