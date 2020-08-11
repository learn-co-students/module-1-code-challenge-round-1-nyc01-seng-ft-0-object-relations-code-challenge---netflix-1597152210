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
  
end
