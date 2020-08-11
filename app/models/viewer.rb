#a viewer has many reviews
#viwer has many movies (through reviews)
class Viewer
  attr_accessor :username

  @@all = Array.new

  def initialize(username)
    @username = username
    @@all << self
  end

  def reviews
    Review.all.select do |x|
      if x.viewer == self
        x
      end
  end
end

def reviewed_movies
  reviews.collect do |x|
    x.movie
  end
end

def reviewed_movie?(movie)
  if reviewed_movies.member?(movie)
      true
    else
      false
    end
  end

  def rate_movie(movie, rating)
  end

  def self.all
    @@all
  end
  

end
