class Viewer

  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  ## object relationship methods
  def reviews
    Review.all.filter {|review| review.viewer == self}
  end

  def reviewed_movies
    self.reviews.map {|review| review.movie} 
    # it wouldn't need uniq because we are making sure every viewer 
    # can review the same movie only once
  end

  ### Aggregate and Association Methods
  def reviewed_movie?(movie)
    self.reviewed_movies.include?(movie)
  end

  def rate_movie(movie, rating)
    if !reviewed_movie?(movie)
      Review.new(self, movie, rating)
    else
      self.reviews.find {|review| review.movie == movie}.rating = rating
    end
  end


  def self.all
    @@all
  end
  
end
