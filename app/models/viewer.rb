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
    Review.all.select.{|review| review.viewer == self}
  end

  def reviewed(movie)
    if self.reviews.map{|reviews| review.movie}? 
    else false
     end
    end


  
end
