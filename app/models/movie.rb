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
  
  
end
