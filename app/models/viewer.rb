require 'pry'

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
    # Reviews that return truthy, either you wrote this review or you didn't
    # Yes or no selection --> use .select
    Review.all.select{|review| review.viewer == self}
  end

  def reviewed_movies
    #returns array of only movies reviewed by viewer
    #creating new array --> use .map
    #drawing on def reviews above to avoid going back through ALL reviews (we only want the ones associated with this viewer)
    self.movie.map{|movie| movie.review}.uniq
  end 

  def reviewed_movie?(movie)
    #return true if viewer has reviewed this movie 
    #in other words, is there a review instance with this viewer and movie
    #return false otherwise 
    if movie.review.present?
      true
  end 

  #def rate_movie(movie, rating)

  #end
  
end

binding.pry
