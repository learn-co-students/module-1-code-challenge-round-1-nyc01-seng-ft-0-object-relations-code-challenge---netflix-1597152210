class Movie
  attr_accessor :title # title can be both changed and viewed

  @@all = []

  def initialize(title) # initialized with a title
    @title = title
    self.class.all << self
  end

  def self.all #returns an array of all Movie instances
    @@all
  end

  def reviews
    Review.all.select do |review|
      review.movie == self
    end
  end

  def reviewers
    self.reviews.map do |review|
      review.viewer
    end
  end

end

