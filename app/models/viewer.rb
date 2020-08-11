class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.filter { |review| review.viewer == self}
  end 

  def reviewed_movies
    reviews.map { |review| review.movie}
  end 
  
end
