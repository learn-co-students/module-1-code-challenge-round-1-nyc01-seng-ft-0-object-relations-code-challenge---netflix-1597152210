class Viewer

  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select{|v_reviews| v_reviews.viewer == self}.uniq
  end

  def reviewed_movies
    reviews.map{|v_reviews| v_reviews.movie}
  end

  def reviewed_movie?(movie_instance)
    reviews.select do |v_reviews|
      if v_reviews.movie == movie_instance
       return true
      else
       return false
      end
    end
  end

  def rate_movie(movie, rating)
    reviews.find do |v_reviews|
      if v_reviews.movie == movie
        Review.new(self, movie, rating)
      end
    end
  end


end
