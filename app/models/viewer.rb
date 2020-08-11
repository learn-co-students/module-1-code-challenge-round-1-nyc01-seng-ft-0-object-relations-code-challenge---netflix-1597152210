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
    Review.all.filter do |rev|
      rev.viewer == self
    end
  end

  def reviewed_movies
    reviews.map do |movies|
      movies.movie
    end
  end

  def reviewed_movie?(movie)
    if reviewed_movies.include?(movie)
       true
    else
      false
    end
  end

  def rate_movie(movie, rating)
    

  end

  
end
