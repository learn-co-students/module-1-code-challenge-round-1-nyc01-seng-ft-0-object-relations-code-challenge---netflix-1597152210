class Review
    attr_reader :viewer, :movie
    attr_accessor :rating

    @@all = []
    
    def self.all
        @@all
    end

    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating.to_f
        self.class.all << self
    end

    

end
