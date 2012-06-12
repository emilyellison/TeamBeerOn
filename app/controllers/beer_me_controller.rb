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
    if params[:draft] == 'true'
      @available_beer = Beer.joins(:beer_experiences).where('beer_experiences.bar_id LIKE ?', params[:bar_id]).where('beer_experiences.draft = ?', 1) 
    else
      @available_beer = Beer.joins(:beer_experiences).where('beer_experiences.bar_id LIKE ?', params[:bar_id])
    end
    @q = @available_beer.search(params[:q])
    @styles = @available_beer.all.collect(&:style).uniq.sort
    
    if params[:q]
      @available_beer = @q.result(:distinct => true)
      @sum_of_checkboxes_checked = params[:q].values.map{ |x| x.to_i }.sum
      if @sum_of_checkboxes_checked > 0
        @styles = @available_beer.all.collect(&:style).uniq.sort
      end
    else
      @sum_of_checkboxes_checked = 0
    end
  end
  
  def recommendation
    @all_beer = Beer.joins(:beer_experiences).where('beer_experiences.bar_id LIKE ?', params[:bar_id])
    if params[:rarity] == 'true'
      if params[:draft] == 'true'
        @beers = @all_beer.where('beer_experiences.draft = ?', 1).order('rarity asc').find_all_by_id(params[:available_beer]).take(20)
      else
        @beers = @all_beer.order('rarity asc').find_all_by_id(params[:available_beer]).take(20)
      end
    else
      if params[:draft] == 'true'
        @beers = @all_beer.where('beer_experiences.draft = ?', 1).find_all_by_id(params[:available_beer]).take(20).shuffle
      else
        @beers = @all_beer.find_all_by_id(params[:available_beer]).take(20).shuffle
      end
    end
  end
  
end