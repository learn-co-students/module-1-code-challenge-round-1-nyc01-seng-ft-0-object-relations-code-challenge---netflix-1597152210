class Review
    attr_accessor :user, :movie, :rating
    
    @@all = []

    def initialize(user, movie, rating) #rating is a number
        @user = user
        @movie = movie
        @rating = rating
        self.class.all << self
    end

    def self.all
        @@all
    end



end
