class Movie
  attr_accessor :title # title can be both changed and viewed

  @@all = []

  def initialize(title) # initialized with a title
    @title = title
    self.class.all << self
  end

  def self.all #returns an array of all Movie instances
    @@all
  end

  def reviews
    Review.all.select do |review|
      review.movie == self
    end
  end

  def reviewers
    self.reviews.map do |review|
      review.viewer
    end
  end
##returned a float for more accuracy, but could remove .to_f if you just wanted to return a whole number
  def average_rating
    total = self.reviews.sum do |review|
      review.rating
    end
    total.to_f/self.reviews.length.to_f
  end

  def self.highest_rated
    rating_array = Movie.all.map do |movie|
      movie.average_rating
    end
    Movie.all.find do |movie|
      movie.average_rating == rating_array.max
    end
  end

end

#### Movie

# - `Movie#initialize(title)`
#   - `Movie` is initialized with a title (string)
#   - title **can be** changed after the `Movie` is initialized

# - `Movie#title`
#   - returns the `Movie`'s title

# - `Movie.all`
#   - returns an array of all the `Movie` instances that have been initialized

# - `Movie#reviews`
#   - returns an array of all the `Review` instances for the `Movie`.

# - `Movie#reviewers`
#   - returns an array of all of the `Viewer` instances that reviewed the `Movie`.

# - `Movie#average_rating`
#   - returns the average of all ratings for the `Movie` instance
#   - to average ratings, add all ratings together and divide by  the total number of ratings.

# - `Movie.highest_rated`
#   - returns the `Movie` instance with the highest average rating.

