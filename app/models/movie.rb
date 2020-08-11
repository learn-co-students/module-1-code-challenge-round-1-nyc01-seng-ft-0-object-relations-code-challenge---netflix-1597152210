class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def reviews
    Review.all.select{|review|review.movie==self}
  end

  def reviewers
    reviews.map {|review|review.viewer}
  end

  def self.all
    @@all
  end

  def total_rating
    reviews.sum do |instance|
      instance.rating
      end
    end

  def average_rating
    total_rating / reviews.count
  end

  def self.highest_rated
    self.all.max_by do |movie|
      movie.average_rating
    end
  end


end