class Brewery < ActiveRecord::Base
  attr_accessible :city, :country, :name, :state, :website
  
  has_many :beers
end
