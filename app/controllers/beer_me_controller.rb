class BeerMeController < ApplicationController
  
  def location
    @location_link = 'active'
    @bars = Bar.all.map(&:name)
  end
  
  def pass_location
    bar = Bar.find_by_name(params[:keyword])
    if bar.present?
      redirect_to beers_url(:bar_id => bar.id)
    else
      flash[:error] = 'You must select a bar.'
      redirect_to location_url
    end
  end
  
  def preference
    @preference_link = 'active'
    if params[:draft] == 'true'
      @available_beer = Beer.joins(:beer_experiences).where('beer_experiences.bar_id = ?', params[:bar_id]).where('beer_experiences.draft = ?', 1) 
    else
      @available_beer = Beer.joins(:beer_experiences).where('beer_experiences.bar_id = ?', params[:bar_id])
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
  
  def save_preference_and_recommendation
        
    @beer_me_search = BeerMeSearch.new

    @beer_me_search.bar_id = params[:bar_id]
    @beer_me_search.rarity = params[:rarity]
    @beer_me_search.draft = params[:draft]
    @beer_me_search.available_beer = params[:available_beer]
    
    member_id = @current_member.id if @current_member.present?
    @beer_me_search.member_id = member_id
    
    if params[:q].present?
      @beer_me_search.style = params[:q][:style_cont]
      @beer_me_search.acidic = params[:q][:acidic_present]
      @beer_me_search.banana = params[:q][:banana_present]
      @beer_me_search.belgian = params[:q][:belgian_present]
      @beer_me_search.bitter = params[:q][:bitter_present]
      @beer_me_search.caramel = params[:q][:caramel_present]
      @beer_me_search.chocolate = params[:q][:chocolate_present]
      @beer_me_search.citrus = params[:q][:citrus_present]
      @beer_me_search.clean = params[:q][:clean_present]
      @beer_me_search.cloves = params[:q][:cloves_present]
      @beer_me_search.coffee = params[:q][:coffee_present]
      @beer_me_search.creamy = params[:q][:creamy_present]
      @beer_me_search.crisp = params[:q][:crisp_present]
      @beer_me_search.earthy = params[:q][:earthy_present]
      @beer_me_search.floral = params[:q][:floral_present]
      @beer_me_search.fruity = params[:q][:fruity_present]
      @beer_me_search.grapefruit = params[:q][:grapefruit_present]
      @beer_me_search.hoppy = params[:q][:hoppy_present]
      @beer_me_search.lemon = params[:q][:lemon_present]
      @beer_me_search.malty = params[:q][:malty_present]
      @beer_me_search.nutty = params[:q][:nutty_present]
      @beer_me_search.pine = params[:q][:pine_present]
      @beer_me_search.rich = params[:q][:rich_present]
      @beer_me_search.smoky = params[:q][:smoky_present]
      @beer_me_search.smooth = params[:q][:smooth_present]
      @beer_me_search.sour = params[:q][:sour_present]
      @beer_me_search.spicy = params[:q][:spicy_present]
      @beer_me_search.sweet = params[:q][:sweet_present]
      @beer_me_search.tart = params[:q][:tart_present]
      @beer_me_search.toffee = params[:q][:toffee_present]
      @beer_me_search.vanilla = params[:q][:vanilla_present]
      @beer_me_search.wheat = params[:q][:wheat_present]
    end
    
    @beer_me_search.save
    
    redirect_to recommendation_url(
      :available_beer => params[:available_beer], 
      :rarity => params[:rarity], 
      :bar_id => params[:bar_id], 
      :draft => params[:draft],
      :q => params[:q],
      :beer_me_search_id => @beer_me_search.id)
  end
  
  def recommendation
    session[:return_to] = request.fullpath
    @recommendation_link = 'active'
    @all_beer = Beer.joins(:beer_experiences).where('beer_experiences.bar_id = ?', params[:bar_id])
    if params[:rarity] == 'true'
      if params[:draft] == 'true'
        @beers = @all_beer.where('beer_experiences.draft = ?', 1).order('rarity desc').find_all_by_id(params[:available_beer]).take(20)
      else
        @beers = @all_beer.order('rarity desc').find_all_by_id(params[:available_beer]).take(20)
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