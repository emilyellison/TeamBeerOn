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
    
    styles = [] 
    if params[:q]
      @available_beer = @q.result(:distinct => true)
      @sum_of_checkboxes_checked = params[:q].values.map{ |x| x.to_i }.sum
      if @sum_of_checkboxes_checked > 0
        @available_beer.all.collect { |x| styles << x.style }
      else 
        @available_beer.all.collect { |x| styles << x.style }
      end
    else
      @sum_of_checkboxes_checked = 0
      @available_beer.all.collect { |x| styles << x.style }
    end
    @styles = styles.uniq.sort!
    
  end
  
  def recommendation
    @beers = []
    params[:available_beer].each do |beer_id|
      @beers << Beer.find_by_id(beer_id)
    end 
    
    # Change shuffle later to order by price, local, rarity.
    @beers = @beers.take(20).shuffle
  
  end
  
end