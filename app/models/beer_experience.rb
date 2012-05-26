class BeerExperience < ActiveRecord::Base
  attr_accessible :bar_id, :beer_id, :draft, :home, :local, :price, :rarity
  
  belongs_to :bar
  belongs_to :beer
  
  validates :bar_id, presence: true
  validates :beer_id, presence: true
  
end
