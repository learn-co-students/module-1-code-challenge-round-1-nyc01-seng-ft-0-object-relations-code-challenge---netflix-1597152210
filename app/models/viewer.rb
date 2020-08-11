class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.filter{|r| r.viewer == self};
  end

  def reviewed_movies
    reviews.map{|r| r.movie};
  end

  def reviewed_movie?(movie)
    query = reviewed_movies.find{|rm| rm.title == movie}; # rm in the {} can also be rm == movie if the movie param is the obj instead of the string name

    if query
      true;
    else
      false
    end
  end

  def rate_movie(movie, rating)
    query = Review.all.find{|r| r.movie == movie and r.viewer == self};
    
    if query
      query.rating = rating;
      puts "Updated #{movie.title} with new rating #{rating}";
    else
      puts "Made new review for #{movie.title}, with rating #{rating}";
      Review.new(movie, self, rating)
    end
  end

  
end
