#movie has many reviews 
#movie has many viewers (through reviews)
class Movie
  attr_accessor :title

  @@all = Array.new

  def initialize(title)
    @title = title
    @@all << self
  end

  def reviews
    Review.all.select do |x|
      x.movie == self
    end
  end

  def reviewers
    reviews.collect do |x|
      x.viewer
    end
  end

  def average_rating
    all_ratings = reviews.collect do |x|
      x.rating
    end
    binding.pry
    all_ratings.sum / reviews.count
  end
  #the method gives back a whole number, so the rounding is a bit off – but it works!

  def self.all
    @@all
  end

end
