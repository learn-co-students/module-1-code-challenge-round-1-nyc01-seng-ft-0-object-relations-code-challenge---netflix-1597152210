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
    Review.all.select{|e|e.movie == self}
  end
  

  def reviewers
    reviews.map{|e|e.viewer}.uniq
  end

  def average_rating
    reviews.sum{|e|e.rating} / reviews.count
  end

  def self.highest_rated
    self.all.max_by{|e|e.average_rating}
  end

end
