class BeerMeController < ApplicationController
  
  def location

  end
  
  def pass_location
    bar = Bar.find_by_name(params[:keyword])
    if bar.present?
      redirect_to beers_url(:bar_id => bar.id)
    else
      redirect_to root_url, notice: 'Sorry, BeerOn doesn\'t serve that bar!'
    end
  end
  
  def preference
    @available_beer = Beer.joins(:beer_experiences).where('beer_experiences.bar_id LIKE ?', params[:bar_id])
    @q = @available_beer.search(params[:q])
    @selected_beer = @q.result(:distinct => true)
    
    styles = [] 
    if params[:q]
      @sum_of_checkboxes_checked = params[:q].values.map{ |x| x.to_i }.sum
      if @sum_of_checkboxes_checked > 0
        @selected_beer.all.collect { |x| styles << x.style }
      else 
        @available_beer.all.collect { |x| styles << x.style }
      end
    else
      @sum_of_checkboxes_checked = 0
      @available_beer.all.collect { |x| styles << x.style }
    end
    @styles = styles.uniq.sort!
    
    # Characteristics - Still need cleaning...
  
    @characteristics_array = [] 
    characteristics = [ :acidic, :clean, :creamy, :crisp, :hoppy, :malty, :rich, :smooth, :bitter, :earthy,
      :sour, :spicy, :sweet, :tart, :banana, :caramel, :citrus, :chocolate, :cloves, :coffee, :floral, :fruity,
      :grapefruit, :lemon, :nutty, :pine, :smoky, :toffee, :vanilla, :wheat, :belgian ]
    characteristics.each do |char|
      @characteristics_array << { char => 
        
          # Create the label for each characteristic.
        { label: char.to_s.capitalize, 
          
          # Create the Ransack appropriate variable name for each characteristic.
          search_term: "#{char.to_s}_present".to_sym, 
          
          # Create the number of beers behind each characteristic.
          number_of_beers: @selected_beer.sum(char) } } 
    end
    
    
  end
  
  def recommendation
    
    # Change shuffle later to order by price, local, rarity.
  
    @beers = @@beers.limit(20).shuffle
  
  end
  
end