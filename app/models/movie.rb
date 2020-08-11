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
    Review.all.select { |review| review.movie == self }
  end

  def reviewers
    self.reviews.map { |review| review.viewer }
  end

  def average_rating
    self.reviews.reduce(0) { |num, review| num += review.rating; num }/reviews.length.to_f
  end

  def self.highest_rated
    # arr = []
    # Review.all.each do |review|
    #   review.rating = review.movie.average_rating if !arr.include?(review.movie)
    #   arr << review.movie
    # end
    arr = []
    Movie.all.each do |movie|
      movie_check = false
      Review.all.each do |review|
        # binding.pry
        if !movie_check && review.movie == movie
          arr << review
          movie_check = true
        end
      end
    end
    arr.each { |review| review.rating = review.movie.average_rating }
    arr.sort_by! { |review| review.rating }
    arr[-1].movie
  end

end
