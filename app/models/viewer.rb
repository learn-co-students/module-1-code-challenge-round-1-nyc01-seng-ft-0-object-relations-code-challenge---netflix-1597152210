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

  def reviewed_movie?(movie) 
    reviewed = false
    reviews.each do |review| 
      if review.movie == movie
        reviewed = true
      end 
    end 
    reviewed
  end 

  def rate_movie(movie, rating)
    if self.reviewed_movie?(movie)
      new_review = self.reviews.find { |review| review.movie == movie }
      new_review.rating = rating
      "Your review is important to us."
    else
      Review.new(self, movie, rating)
      "Thank you for reviewing this movie."
    end
  end