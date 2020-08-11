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
    Review.all.filter{|r| r.movie == self};
  end

  def reviewers
    reviews.map{|r| r.viewer};
  end

  def average_rating
    reviews.reduce(0){|sum, r| sum + r.rating} / reviews.length # so its working as ints and not floats btw Idk so it will round unless I coerce ratings to a float in the init for review
  end

  def self.highest_rated
    Movie.all.reduce(0){|highest_rating, m| highest_rating > m.average_rating ? (m.average_rating) : (highest_rating)}
  end

end
