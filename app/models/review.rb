class Review
    ## class attributes section
    @@all = []

    ## instance attributes definition section
    attr_accessor :viewer, :movie, :rating

    ## class constructor section
    def initialize(viewer, movie, rating)
        self.viewer = viewer
        self.movie = movie
        self.rating = rating

        self.class.all << self
    end

    ## instance methods section 
    ## viewer and movie methods asked for in the challenge are already defined 
    ## in the attr_accesor


    ## class methods section
    def self.all
        @@all
    end

end
