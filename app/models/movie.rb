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
    Review.all.filter do |rev|
      rev.movie == self
    end
  end

  def reviewers
    reviews.map do |reviewers|
      reviewers.viewer
  end
  end

  def average_rating
    Review.all.reduce(0) do |sum, ratings|
      sum + (ratings.rating/Review.all.count)
    end

  end


end

