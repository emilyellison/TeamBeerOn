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
    @styles = @available_beer.all.collect(&:style).uniq.sort
    
    if params[:q]
      @sum_of_checkboxes_checked = params[:q].values.map{ |x| x.to_i }.sum
      @available_beer = @q.result(:distinct => true)
      if @sum_of_checkboxes_checked > 0
        @styles = @available_beer.all.collect(&:style).uniq.sort
      end
    else
      @sum_of_checkboxes_checked = 0
    end
  end
  
  def recommendation

    # Change shuffle later to order by price, local, rarity.
    @beers = Beer.find_all_by_id(params[:available_beer]).take(20).shuffle
  
  end
  
end