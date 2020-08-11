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
    Review.all.filter {|reviews| reviews.viewer == self}
  end

  def reviewed_movies
    Review.all.filter do |reviews|
      if reviews.viewer == self && reviews.movie == Movie.title
        Movie.title
    end
  end
  
end
