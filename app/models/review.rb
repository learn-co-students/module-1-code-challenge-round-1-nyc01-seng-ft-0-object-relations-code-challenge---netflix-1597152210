class Review
    
    @@all = [];

    def self.all
        @@all;
    end

    attr_accessor :viewer, :movie, :rating;

    def initialize(viewer, movie, rating)
        @viewer = viewer;
        @movie = movie;
        @rating = rating;
        self.class.all.push(self);
    end
end
