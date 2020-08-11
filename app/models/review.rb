class Review
  attr_accessor :movie, :viewer, :rating #left rating as changeable since wasn't specified

  @@all = []

  def initialize(movie, viewer, rating) 
    @movie = movie
    @viewer = viewer
    @rating = rating
    @@all << self
  end

  def self.all #returns all Review instances
    @@all
  end

  


end

