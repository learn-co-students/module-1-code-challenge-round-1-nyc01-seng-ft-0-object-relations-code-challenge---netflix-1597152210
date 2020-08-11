class Review

    attr_accessor :movie, :viewer, :rating

    @@all=[]

    def initialize (viewer, movie, rating)
        @rating=rating
        @movie=movie
        @viewer=viewer
        @@all << self
    end

    def self.all
        @@all
    end


end
