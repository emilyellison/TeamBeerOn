class Rating < ActiveRecord::Base
  attr_accessible :feel, :look, :overall, :score, :smell, :story, :taste, :member_id, :beer_id, :beer_me_search_id
  
  belongs_to :member
  belongs_to :beer
  belongs_to :beer_me_search
  
end
