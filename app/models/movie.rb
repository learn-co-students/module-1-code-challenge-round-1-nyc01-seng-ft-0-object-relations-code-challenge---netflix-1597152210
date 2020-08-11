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
   Review.all.filter{|reviews| reviews.movie == self}
  end

  def reviewers
    Review.all.filter do |reviews|
      if reviews.movie == self
        reviews.viewer
      end
    end
  end

  def average_rating
    
  end

  def highest_rated
    array = []
    Review.all.select do |reviews|
      array << reviews.rating
    end
    array.max
  end

end
