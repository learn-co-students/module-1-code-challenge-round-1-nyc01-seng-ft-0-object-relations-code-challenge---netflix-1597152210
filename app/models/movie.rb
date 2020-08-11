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
    Review.all.select {|review| review.movie == self}
  end

  def reviewers
    self.reviews.map {|review| review.viewer}
  end

  def average_rating
    self.reviews.sum {|rev| rev.rating.to_f/self.reviews.count}
  end

  def self.highest_rated
    self.all.max_by {|mov| mov.average_rating}
  end

end
