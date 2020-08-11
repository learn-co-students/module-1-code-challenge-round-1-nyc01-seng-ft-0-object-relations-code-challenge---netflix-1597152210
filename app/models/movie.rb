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

end
