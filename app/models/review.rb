class Review

    attr_accessor :movie, :viewer, :rating

    @@all = Array.new

    def initialize(movie, viewer, rating)
        @movie = movie
        @viewer = viewer
        @rating = rating
        @@all.push(self)
    end

    def self.all
        @@all
    end


end
