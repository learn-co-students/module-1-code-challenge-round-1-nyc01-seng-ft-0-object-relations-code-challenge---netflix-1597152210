class Review
    
    @@all = [];

    def self.all
        @@all;
    end

    attr_accessor :viewer, :movie, :rating;

    def initialize(viewer, movie, rating)
        query = Review.all.find{|r| r.viewer == viewer and r.movie == movie and r.rating == rating};
        if query
            puts 'This Review Exists already stop trying to boost ur own movie bro'
        else
            @viewer = viewer;
            @movie = movie;
            @rating = rating;
            self.class.all.push(self);
        end
    end
end


# so I think because Review has a third element called rating we can actually check for duplicares in the initalize when we call new.
# so yesterday with ride we couldnt tell if it was a duplicare based on just passenger, distance, and driver since it could just be
# the driver doing a equal length drive with the same passenger
# however, since a review for a movie from the same person with the exact same rating twice would be like rating boosting and an actual duplicate
# so im going to fix this in the init...Hopefully it doesnt break everything else.

# if u try and make a duplicate now it will shoot out an empty obj but it will not add it the class var for reviews or assiote it 
# with anything