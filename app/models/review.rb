class Review

    @@all = []

    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating=  rating
    end

    def self.all
        @all
    end

    def viewer
        Viewer.all.filter {|viewers| viewers.username == self.viewer}
    end

    def movie
        Movie.all.select {{|movies| movies.title == self.movie}}
    end

end
