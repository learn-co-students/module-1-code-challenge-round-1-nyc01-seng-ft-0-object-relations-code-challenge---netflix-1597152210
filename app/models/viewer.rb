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

  def reviews #array of Review instances. call the class!!
    Review.all.select do |rev|
      rev.viewer == self
    end
  end

  def reviewed_movies
    reviews.map do |rev|
      rev.movie 
    end
  end

  def reviewed_movie?(movie) #<=== "?" method works as a conditional

  end

  def rate_movie(movie, rating)
    Review.new(self, movie, rating)
  end
  
end
