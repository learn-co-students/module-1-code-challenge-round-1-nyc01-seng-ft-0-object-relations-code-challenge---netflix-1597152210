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

  def reviewed_movie?(movie)
    self.reviewed_movies.include?(movie)
  end

  def rate_movie(movie, rating)
    if !self.reviewed_movie?(movie)
      return Review.new(movie, self, rating)
    end
    movie_to_change = self.reviews.find do |review|
        review.movie == movie
      end
      movie_to_change.rating = rating
      movie_to_change
  end
 
  
end



# - `Viewer#rate_movie(movie, rating)`
#   - a `Movie` instance and a rating (number) are passed in as arguments
#   - if the `Viewer` instance and the passed `Movie` instance are _not_ already associated, this method should create a new `Review` instance
#   - if this `Viewer` has already reviewed this `Movie`, assigns the new rating to the existing `Review` instance

# - `Viewer#reviewed_movie?(movie)`
#   - a `Movie` instance is the only argument
#   - returns `true` if the `Viewer` has reviewed this `Movie` (if there is a `Review` instance that has this `Viewer` and `Movie`), returns `false` otherwise
