class BeerExperience < ActiveRecord::Base
  attr_accessible :bar_id, :beer_id, :draft, :home, :local, :price, :rarity
  
  belongs_to :bar
  belongs_to :beer
  
end
