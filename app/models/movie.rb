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
    Review.all.select do |view|
      view.movie == self
    end
  end

  def reviewers
    self.reviews.map do |view|
      view.viewer
    end
  end

  


end
