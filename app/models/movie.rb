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
    Review.all.filter do |review|
      review.movie = self
    end
  end

  #def reviewers
   # Viewer.all.filter do |viewer|
    #  movie
    #end
    
    def average_rating
      Movie.all {|movie, rating| rating/@@all.length}
    end

  end
