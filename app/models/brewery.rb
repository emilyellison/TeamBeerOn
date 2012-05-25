class Brewery < ActiveRecord::Base
  attr_accessible :address, :city, :country, :name, :state, :website
  
  has_many :beers
end
