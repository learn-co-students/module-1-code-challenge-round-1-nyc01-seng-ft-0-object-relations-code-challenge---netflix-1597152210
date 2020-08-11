require 'pry'

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

  end 

  def reviewers
    #return array of all review instances for movie
  end 

end

binding.pry 

