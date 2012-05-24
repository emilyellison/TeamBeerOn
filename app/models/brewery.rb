class Brewery < ActiveRecord::Base
  attr_accessible :city, :country, :name, :state, :website
end
