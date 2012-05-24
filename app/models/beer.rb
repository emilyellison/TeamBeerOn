class Beer < ActiveRecord::Base
  attr_accessible :abv, :brewer_id, :ibu, :name, :srm, :style
  
  belongs_to :brewery
end
