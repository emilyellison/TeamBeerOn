class Brewery < ActiveRecord::Base
  attr_accessible :address, :city, :country, :name, :state, :website
  
  has_many :beers
  
  validates :name, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :country, presence: true
  
end
