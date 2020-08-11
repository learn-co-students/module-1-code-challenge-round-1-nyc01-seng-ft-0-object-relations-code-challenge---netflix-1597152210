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
    Review.all.filter { |review| review.movie == self }
  end

  def reviewers
    reviews.map{ |review| review.viewer }
  end 
end
