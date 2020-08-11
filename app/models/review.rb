class Review

    attr_reader :viewer, :movie
    
    #Per specs, :rating should be able to be modified
    attr_accessor :rating

    @@all = []

    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end

end
