class Viewer
  attr_accessor :username #username can be both changed and viewed

  @@all = []

  def initialize(username) #initialized with a username
    @username = username
    self.class.all << self
  end

  def self.all #returns an array of all Viewer instances
    @@all
  end

  def reviews
    Review.all.select do |review|
      review.viewer == self
    end
  end

  def reviewed_movies
    self.reviews.map do |review|
      review.movie
    end
  end
  
end



