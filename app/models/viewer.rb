class Viewer
  attr_accessor :username, :name, :rating,
  attr_writer :movie

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end
  
  def movie
    @movie = movie
    self.class.all << self
  end
  
  def self.all
    @@all
  end
  
end
