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
    Review.all.select do |review|
      review.movie == self 
    end
  end

  def reviewers
    reviews.map do |review|
      review.viewer 
    end 
  end 

  def ratings
    reviews.map do |review|
      review.rating
    end 
  end 
  
  def average_rating
    sum_of_ratings= ratings.inject(0){|sum,x| sum + x }
    average = sum_of_ratings/(ratings.length)
    average
  end 

  def self.highest_rated
    top_movies = {}
    @@all.map do |movie|
      top_movies[movie] = movie.average_rating
    end
    top_movies.max_by do |movie, avg_rating| 
      avg_rating
    end
  end 

end


# - `Movie#average_rating`
#   - returns the average of all ratings for the `Movie` instance
#   - to average ratings, add all ratings together and divide by the total number of ratings.
# - `Movie.highest_rated`
#   - returns the `Movie` instance with the highest average rating.