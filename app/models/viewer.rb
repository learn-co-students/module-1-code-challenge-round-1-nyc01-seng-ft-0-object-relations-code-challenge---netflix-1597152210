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
    Review.all.select{|review| review.viewer == self}
  end

  def reviewed_movies
    reviews.map {|review| review.movie}
  end

  def reviewed_movie?(movie)
    flag = false
      Review.all.each do |review|
        if review.viewer == self and review.movie == movie
        flag = true
        end
      end
    flag
  end

  def 

  
end
