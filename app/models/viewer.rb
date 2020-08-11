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
    Review.all.select do |reviews|
      reviews.viewer == self
    end
  end

  def reviewed_movies
    reviews.map do |reviews|
      reviews.movie 
    end
  end
  

end
