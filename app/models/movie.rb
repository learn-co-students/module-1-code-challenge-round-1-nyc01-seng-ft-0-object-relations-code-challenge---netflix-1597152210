class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title.to_s
    self.class.all << self
  end

  def self.all
    @@all
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

end
