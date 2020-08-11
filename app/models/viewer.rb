class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def reviews
    Review.all.select {|review|review.viewer==self}
  end

  def reviewed_movies
    reviews.map{|review|review.movie}
  end

  def reviewed_movie?(movie)
    reviewed_movies.any? {|i| i == movie}
  end


  def self.all
    @@all
  end
  
end
