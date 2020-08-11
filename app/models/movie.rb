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
      Review.all.select do |rev|
        rev.movie == self
      end
    end

end

