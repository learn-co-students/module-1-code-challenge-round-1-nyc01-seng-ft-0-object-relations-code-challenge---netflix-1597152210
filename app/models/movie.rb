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
    Review.all.filter{|r| r.movie == self};
  end

  def reviewers
    reviews.map{|r| r.viewer};
  end

  def average_rating
    if reviews.length == 0
      puts "movie #{self.title} has no reviews"
      0
    else
      reviews.reduce(0){|sum, r| sum + r.rating} / reviews.length # so its working as ints and not floats btw Idk so it will round unless I coerce ratings to a float in the init for review
    end
  end
  #hey if there is no review for a movie this 0 errors out since u cant divide by 0 I added a condtional for it
  # I thouight this was important because it chain breaks Movie.highest_rated if there is a movie with no review
  # you have to return a 0 instead of nil after the puts because reduce cant compare ints to nil
  # because the puts in average rating it will also list all the movies that have no reviews in highest rating before prining the highest
  # reviewd movie

  def self.highest_rated
    r = Movie.all.reduce(0){|highest_rating, m| highest_rating < m.average_rating ? (m.average_rating) : (highest_rating)}
    m = Movie.all.find{|m| m.average_rating == r}
    puts "Movie #{m.title} has the highest rating of #{r}";
    m;

  end

end