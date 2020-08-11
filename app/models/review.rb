class Review

    @@all = []

    def initialize(viewer_instance,movie_instance,rating_num)
        @viewer_instance =v iewer_instance
        @movie_instance = movie_instance
        @rating_num = rating_num
        @@all << self
    end

    def self.all
        @@all
    end
    
    def rating

    end




end
