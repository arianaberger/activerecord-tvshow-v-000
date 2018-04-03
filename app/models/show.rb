class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum("rating")
  end

  def self.most_popular_show
    top_rating = self.highest_rating
    show = self.find_by(rating: top_rating)
  end

  def self.lowest_rating
    
  end
  
end
