class BeerMeController < ApplicationController
  
  def location
    
  end
  
  def preference
    @q = Beer.search(params[:q])
    styles = []
    Beer.all.collect { |x| styles << x.style }
    @styles = styles.uniq.sort!
      
    @characteristics_array = [] 
    characteristics = [ :acidic, :clean, :creamy, :crisp, :hoppy, :malty, :rich, :smooth, :bitter, :earthy,
      :sour, :spicy, :sweet, :tart, :banana, :caramel, :citrus, :chocolate, :cloves, :coffee, :floral, :fruity,
      :grapefruit, :lemon, :nutty, :pine, :smoky, :toffee, :vanilla, :wheat, :belgian ]
    characteristics.each do |char|
      @characteristics_array << { char => 
        { label: char.to_s.capitalize, 
          search_term: "#{char.to_s}_present".to_sym , 
          number_of_beers: Beer.sum(char) } }
    end
      
  end
  
  def recommendation
    @q = Beer.search(params[:q])
    # Change shuffle later to order by price, local, rarity.
    @beers = @q.result(:distinct => true).shuffle
  end
  
end