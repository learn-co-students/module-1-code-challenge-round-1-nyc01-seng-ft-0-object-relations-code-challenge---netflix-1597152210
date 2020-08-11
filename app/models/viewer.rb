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

  def self.all
    @@all
  end
  
end
