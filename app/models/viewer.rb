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
  
  def reviews #returns an array of `Review` instances associated with the `Viewer` instance.
    Review.all.select do |review|
      review.viewer == self
    end
  end

  def reviewed_movies #returns an array of `Movie` instances reviewed by the `Viewer` instance
    reviews.map do |review|
      review.movie
    end
  end

  def reviewed_movie?(movie) #movie is an instance / if reviewed movie return true if not return false
    moviereview = []
    reviewed_movies.select do |rm|
       if rm == movie
        moviereview = rm
       end
    end
    if moviereview != []
      true
    else 
      false
    end
  end

  def rate_movie(movie, rating)
    if reviewed_movie?(movie) == false
      Review.new(self, movie, rating)
    else #assign a new rating
      reviews.select do |review|
        if review.movie == movie
          review.rating = rating
        end  
      end       
    end
  end

  
end
