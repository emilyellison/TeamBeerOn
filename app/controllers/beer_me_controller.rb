class BeerMeController < ApplicationController
  
  def location
    
  end
  
  def preference
    @q = Beer.search(params[:q])
    styles = []
    Beer.all.collect { |x| styles << x.style }
    @styles = styles.uniq.sort!
    @search_characteristics = { acidic_present: 'Acidic', clean_present: 'Clean', creamy_present: 'Creamy',
      crisp_present: 'Crisp', hoppy_present: 'Hoppy', malty_present: 'Malty', rich_present: 'Rich',
      smooth_present: 'Smooth', bitter_present: 'Bitter', earthy_present: 'Earthy', sour_present: 'Sour',
      spicy_present: 'Spicy', sweet_present: 'Sweet', tart_present: 'Tart', banana_present: 'Banana',
      caramel_present: 'Caramel', citrus_present: 'Citrus', chocolate_present: 'Chocolate', 
      cloves_present: 'Cloves', coffee_present: 'Coffee', floral_present: 'Floral', fruity_present: 'Fruity',
      grapefruit_present: 'Grapefruit', lemon_present: 'Lemon', nutty_present: 'Nutty', pine_present: 'Pine',
      smoky_present: 'Smoky', toffee_present: 'Toffee', vanilla_present: 'Vanilla', wheat_present: 'Wheat',
      belgian_present: 'Belgian' }
  end
  
  def recommendation
    @q = Beer.search(params[:q])
    @beers = @q.result(:distinct => true)
  end
  
end