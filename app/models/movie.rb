require 'pry'

class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    #return array of all reviews for movie
    #could use .filter or .select --> we just want to know the reviews of a movie (return truthy)
    Review.all.filter{|review| review.movie == self}
  end 

  def reviewers
    #return array of all viewer instances that reviewed the movie
    #creating a new array of viewers that has reviewed this specific movie --> .map
    #instead of all viewers in the movie class - just the ones specific to this movie
    review.map{|review| review.viewer.name}.uniq
  end 

end

binding.pry 

