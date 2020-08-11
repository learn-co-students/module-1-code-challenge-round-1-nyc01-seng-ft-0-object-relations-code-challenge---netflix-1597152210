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
    Review.all.filter {|reviews| reviews.movie == self}
  end

  def reviewers
    if Viewer.reviewed_movies == self
      Viewer.usernames
    end
  end

  def average_rating
    sum = 0
    Review.all.filter do |reviews|
      if reviews.movie == self
        sum += reviews.rating
      end
    end
    count = 0
    Review.all.filter do |reviews| 
      count = reviews.movie.count
    end
    sum / count
  end

  def highest_rated
    Review.all.select {|reviews| reviews.rating}.max
  end

end
