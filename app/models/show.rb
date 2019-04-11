class Show < ActiveRecord::Base
    
    def self.highest_rating
      # return highest value from rating column
      self.maximum(:rating)
    end

    def self.most_popular_show
      # return show with the highest rating
      self.where("rating = ?", self.highest_rating).first
    end

    def self.lowest_rating
      # return lowest value from rating column
      self.minimum(:rating)
    end

    def self.least_popular_show
      # return show with the lowest rating
      self.where("rating = ?", self.lowest_rating).first
    end

    def self.ratings_sum
      # return the sum of all ratings
      self.sum(:rating)
    end

    def self.popular_shows
      # return an array of shows with rating > 5 
      self.where("rating > ?", 5)
    end

    def self.shows_by_alphabetical_order
      # return an array of all shows alphabetically by name
      self.order(:name)
    end
    
end