class Review
    attr_accessor :viewer, :name, :rating, 

    @@all = []

    def initialize(rating)
        @rating = rating
        @@all << self
    end

    def name
        name.all.map do |n|   #<---Not sure if I'm allowed to abbriveate like this?
            name.n == self
        end
    end

    def viewer
        viewer.all.find do |v|
            viewer.v == self
        end
    end

    def self.all
        @@all
      end
end
