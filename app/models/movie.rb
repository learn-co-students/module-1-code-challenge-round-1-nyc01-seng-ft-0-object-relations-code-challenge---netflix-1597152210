class Movie
  attr_accessor :title
  attr_writer :average_rating

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def average_rating
    @average_rating = average_rating
    @@all << self
  end
  


  def self.all
    @@all
  end

end
