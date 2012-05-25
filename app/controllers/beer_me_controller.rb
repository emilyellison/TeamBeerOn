class BeerMeController < ApplicationController
  
  def location
    
  end
  
  def preference
    @beer_me_search = BeerMeSearch.new
  end
  
  def recommendation
    
  end
  
end