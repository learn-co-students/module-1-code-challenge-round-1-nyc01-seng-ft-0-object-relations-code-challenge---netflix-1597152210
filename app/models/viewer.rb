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
    Review.all.select do |rev|
      rev.viewer == self
    end
  end

  def reviewed_movies
    self.reviews.map do |view|
      view.movie
    end
  end

  



  
end
