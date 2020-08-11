class Movie
  attr_accessor :title

  

  def initialize(title)
    @title = title
    
  end

  # instance methods
  def reviews
    Review.all.select {|review|review.movie == self }
  end

  def reviewed_movies
    reviews.map {|review| review.viewer}
  end

  # class methods
  def self.all
    Review.all.select{ |review| review.movie.title == self}.uniq
  end

end
