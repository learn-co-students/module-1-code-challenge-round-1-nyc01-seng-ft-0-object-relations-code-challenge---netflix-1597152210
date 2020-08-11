class Review

    attr_accessor :movie, :viewer

    @@all=[]
    
    def initialize (movie, viewer)
        @movie=movie
        @viewer=viewer
        @@all << self
    end

    def self.all
        @@all
    end


end
