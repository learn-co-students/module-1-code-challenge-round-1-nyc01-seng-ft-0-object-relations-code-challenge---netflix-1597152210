#a review belongs to a viewer and a movie
class Review
    attr_accessor :rating       

    @@all = Array.new

    def initialize(viewer, movie, rating=0) 
        @viewer = viewer
        @movie = movie
        @rating = rating
        @@all << self
    end

    def viewer
        @viewer
    end

    def movie
        @movie
    end

    def self.all
        @@all
    end

end
