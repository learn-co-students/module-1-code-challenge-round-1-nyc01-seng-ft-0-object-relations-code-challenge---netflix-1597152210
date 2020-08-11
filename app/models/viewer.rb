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
    Review.all.filter { |review| review.viewer == self}
  end 

  def reviewed_movies
    reviews.map { |review| review.movie}
  end 

  def reviewed_movie?(movie) #expects a movie instance as an argument
    reviewed = false
    reviews.each do |review| 
      if review.movie == movie
        reviewed = true
      end 
    end 
    reviewed
  end 

  def rate_movie(movie, rating) #expects a movie instance and a rating(number) as arguments
    if reviewed_movie?(movie)
      reviews.each do |review|
        if review.movie == movie
          review.rating = rating
        end 
      end 
    else
      Review.new(self, movie, rating)
    end 
  end 
end
