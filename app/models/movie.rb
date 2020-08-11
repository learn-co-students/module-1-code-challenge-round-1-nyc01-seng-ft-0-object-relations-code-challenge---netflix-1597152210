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

  #Find all reviews associated with THIS Movie.
  def reviews
    Review.all.select {|review| review.movie == self}
  end

  #Of all the reviews associated with THIS Movie, find unique viewers
  #Dont' really need 'uniq' here because a user can never have two reviews on the same movie
  def reviewers
    self.reviews.map {|review| review.viewer}
  end

  #Find the average rating of Reviews associated with THIS Movie
  def average_rating
    self.reviews.sum {|rev| rev.rating.to_f/self.reviews.count}
  end

    #Of ALL Movie instances, find the one with the highest rating
  def self.highest_rated
    self.all.max_by {|mov| mov.average_rating}
  end

  #Of ALL Movie instances, find the one with the lowest rating
  def self.lowest_rated
    self.all.min_by {|mov| mov.average_rating}
  end

end
