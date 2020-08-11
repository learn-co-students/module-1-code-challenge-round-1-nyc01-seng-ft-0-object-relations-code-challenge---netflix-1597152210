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

  
end
