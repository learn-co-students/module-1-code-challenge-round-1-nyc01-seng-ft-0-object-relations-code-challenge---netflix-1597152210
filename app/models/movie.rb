class Movie
  
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select{|m_reviews| m_reviews.movie == self}
  end

  def reviewers
    reviews.map{|m_reviews| m_reviews.viewer}
  end

  def average_rating
    total_number = reviews.reduce(0){|total, review| total + review.rating}.to_f
    total_number / reviews.count
  end


  def self.highest_rated
    all.select {|review|}
  end
 
end
