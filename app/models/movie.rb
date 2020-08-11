class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  ## object relationship methods
  def reviews
    Review.all.filter {|review| review.movie == self}
  end

  def reviewers
    self.reviews.map {|review| review.viewer}
    # wouldn't need uniq because we are making sure every viewer
    # can review the same movie only once
  end

  ### Aggregate and Association Methods
  def average_rating
    self.reviews.inject(0){|effectif, review| effectif + review.rating} / self.reviews.count
  end

  def self.highest_rated
    self.all.inject{|movie1, movie2| movie1.average_rating > movie2.average_rating ? movie1 : movie2}
  end

  def self.all
    @@all
  end

end
