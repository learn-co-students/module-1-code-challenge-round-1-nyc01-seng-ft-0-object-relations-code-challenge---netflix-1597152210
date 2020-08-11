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
    Review.all.filter do |review|
      review.movie == self
    end
  end

  def reviewers
    self.reviews.map do |review|
      review.viewer
    end
  end

  def ratings
    self.reviews.map do |review|
      review.rating
    end
  end
  
  def average_rating
    self.ratings.sum.to_f / self.ratings.length
  end

  def self.highest_rated
    # highest_rated = []
    max_rating = 0
    self.all.map do |movie|
      if movie.average_rating > max_rating
        max_rating = movie.average_rating
        movie
        # highest_rated << movie
      end
    end
    # highest_rated
  end






end
