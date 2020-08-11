class Movie
  attr_accessor :title

  

  def initialize(title)
    @title = title
    
  end

  # instance methods
  def reviews
    Review.all.select {|review|review.movie == self }
  end

  def reviewers
    reviews.map {|review| review.viewer}
  end

  def average_rating
    # iterate over reviews of self
      # all_rating = create array of all rating
        # flatten arrray and divide by length of reviews


        # tried reviews.map {|review| review.movie.rating}
    binding.pry

    # avg_rating = []
    # Review.all.select do |review|
    #   if review.movie == self
    #     avg_rating.push(review.rating)
    #   end
    # end
    # avg_rating

    # avg_rating = []
     #/ reviews.length
    # average_rating
    # binding.pry
  end

  # class methods
  def self.all
    Review.all.select{ |review| review.movie.title == self}.uniq
  end

end
