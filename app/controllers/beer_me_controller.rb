class BeerMeController < ApplicationController
  
  def location

  end
  
  def pass_location
    bar = Bar.find_by_name(params[:keyword])
    if bar.present?
      redirect_to beers_url(:bar_id => bar.id)
    else
      redirect_to root_url, notice: 'Sorry, BeerOn does not serve that bar!'
    end
  end
  
  def preference
    @available_beer = Beer.joins(:beer_experiences).where('beer_experiences.bar_id LIKE ?', params[:bar_id])
    @q = @available_beer.search(params[:q])
    @@beers = @q.result(:distinct => true)
    
    # Create a characteristics array for form labeling and collecting how many 
    # beers are left in the database for any particular characteristic.
    
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
          number_of_beers: @@beers.sum(char) } } 
    end
    
    # Create a styles instance variable to collect all available styles.
    
    styles = []
    
    # Add the number of checkboxes checked.
    
    if params[:q]
      @sum_of_checkboxes_checked = params[:q].values.map{ |x| x.to_i }.sum
    else
      @sum_of_checkboxes_checked = 0
    end
      
    # If they have filtered on any checkbox characteristics, only keep the styles left.
    # Otherwise, load all the styles.  
      
    if @sum_of_checkboxes_checked > 0
      @@beers.all.collect { |x| styles << x.style }
    else 
      @available_beer.all.collect { |x| styles << x.style }
    end
    
    # Uniqify styles and sort alphabetically.
  
    @styles = styles.uniq.sort!
    
  end
  
  def recommendation
    
    # Change shuffle later to order by price, local, rarity.
  
    @beers = @@beers.limit(20).shuffle
  
  end
  
end