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
    Review.all.filter {|review| review.movie_instance ==self}
  end

  def reviewers
    reviews.map{|review|review.viewer.username}
  end

  def average_rating # get total ratings from



end
