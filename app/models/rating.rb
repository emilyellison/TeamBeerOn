class Rating < ActiveRecord::Base
  attr_accessible :feel, :look, :overall, :score, :smell, :story, :taste
  
  belongs_to :member
  belongs_to :beer
  
end
