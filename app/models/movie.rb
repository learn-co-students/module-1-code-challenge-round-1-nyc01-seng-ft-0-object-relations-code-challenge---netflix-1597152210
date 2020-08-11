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

  def average_rating
    #average = total or sum of ratings / # of elements (.length)
    #a rating starts at 0
    #.reduce to output a single value from an array
    movie.reduce(0){|sum, movie| sum + (movie.rating/all.length)}
  end 

  def self.highest_rated
    #looking through the entire class to find the highest rated movie
    all.max_by{|score| score[:rating]}[:title]
  end 

end

binding.pry 

