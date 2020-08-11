class Review
    attr_accessor :viewer, :movie, :rating
    @@all = []

    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating

        @@all.push(self)
    end

    # instance methods
    def rating
        self.rating
    end

    # class methods
    def self.all
        @@all
    end

end
