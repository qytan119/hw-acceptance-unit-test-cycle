class Movie < ActiveRecord::Base
  def self.find_similar_movies(director)
    Movie.where(director: director)
  end
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
    
  def self.with_ratings(ratings)
      where("LOWER(rating) IN (?)", ratings.map(&:downcase))
  end
end
