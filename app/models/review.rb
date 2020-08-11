class Review
    attr_accessor :viewer, :movie, :rating
    
    @@all = []

    def initialize(viewer, movie, rating) #rating is a number
        @viewer = viewer
        @movie = movie
        @rating = rating
        self.class.all << self
    end

    def self.all
        @@all
    end



end
