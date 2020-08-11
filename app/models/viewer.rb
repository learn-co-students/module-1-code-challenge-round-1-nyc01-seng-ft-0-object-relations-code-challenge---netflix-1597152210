class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username.to_s
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |review|
      review.viewer == self
    end
  end

  def reviewed_movies
    reviews.map do |review|
      review.movie
    end
  end

  
  
end
