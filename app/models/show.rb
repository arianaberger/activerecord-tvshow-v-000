class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum("rating")
  end

  def self.most_popular_show
    top_rating = self.highest_rating
    show = self.find_by(rating: top_rating)
  end

  def self.lowest_rating
    self.minimum("rating")
  end

  def self.least_popular_show
    low_rating = self.lowest_rating
    show = self.find_by(rating: lowest_rating)
  end

  def self.ratings_sum
    self.sum("rating")
  end

end
