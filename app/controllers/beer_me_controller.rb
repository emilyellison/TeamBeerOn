class BeerMeController < ApplicationController
  
  def location
    
  end
  
  def preference
    @q = Beer.search(params[:q])
    @@beers = @q.result(:distinct => true)
    
    # Create a characteristics array for form labeling and collecting how many 
    # beers are left in the database for any particular characteristic.
    @characteristics_array = [] 
    characteristics = [ :acidic, :clean, :creamy, :crisp, :hoppy, :malty, :rich, :smooth, :bitter, :earthy,
      :sour, :spicy, :sweet, :tart, :banana, :caramel, :citrus, :chocolate, :cloves, :coffee, :floral, :fruity,
      :grapefruit, :lemon, :nutty, :pine, :smoky, :toffee, :vanilla, :wheat, :belgian ]
    characteristics.each do |char|
      @characteristics_array << { char => 
        { label: char.to_s.capitalize, 
          search_term: "#{char.to_s}_present".to_sym, 
          number_of_beers: @@beers.sum(char) } }
    end
    
    # Create a styles instance variable to collect all available styles.
    styles = []
    @sum_of_checkboxes_checked = 0

    if params[:q].present?
      @characteristics_array.each do |char|
        char.each do |name, desc|
          @sum_of_checkboxes_checked += params[:q][desc[:search_term]].to_i
        end 
      end
    end
      
    if @sum_of_checkboxes_checked > 0
      @@beers.all.collect { |x| styles << x.style }
    else 
      Beer.all.collect { |x| styles << x.style }
    end
  
    @styles = styles.uniq.sort!
    
  end
  
  def recommendation
    
    # Change shuffle later to order by price, local, rarity.
    @beers = @@beers.shuffle
  end
  
end