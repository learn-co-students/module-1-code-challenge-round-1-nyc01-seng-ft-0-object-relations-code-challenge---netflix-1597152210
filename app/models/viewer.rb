require 'pry'

class Viewer
  attr_accessor :username

  def initialize(username)
    @username = username
  end


  #instance methods
  def reviews
    Review.all.select {|review| review.viewer == self}
  end

  def reviewed_movies
    reviews.map{|review| review.movie} 
  end

  def reviewed_movie?(movie)
    reviewed_movies.include?(movie)
  end

  def rate_movie(movie, rating)
    if !reviewed_movie?(movie)
      Review.new(self, movie, rating)
    else
      Review.all.select do |review|
        # if reviewed_movie?(movie)
        #   Review.rating = rating
        # end
        binding.pry
      end
    end
  end
# vincent.rate_movie(bad_boys, 100)

  # class methods
  def self.all
    Review.all.select{|review| review.viewer == self}
  end
  
end
