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

  def average_rating
    (reviews.map {|review| review.rating }.reduce {|sum, rating| sum + rating })/ reviews.count 
  end

  def self.highest_rated
    all.max {|movie_a, movie_b| movie_a.average_rating <=> movie_b.average_rating }
  end 

end
