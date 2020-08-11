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

  def average_rating
    all_ratings = reviews.map do |review|
      review.rating
    end

    # to avoid divide by zero problems when there are no ratings
    if all_ratings.length > 0
      all_ratings.sum(0.0) / all_ratings.length
    else
      nil
    end
  end

  def self.highest_rated
    
    # so we only compare movies that actually have ratings
    all_rated = self.all.select do |movie|
      movie.average_rating != nil
    end

    all_rated.max do |a, b|
      a.average_rating <=> b.average_rating
    end
  end

end
