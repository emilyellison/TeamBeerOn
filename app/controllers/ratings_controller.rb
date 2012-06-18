class RatingsController < ApplicationController

  before_filter :redirect_if_not_logged_in

  def show
    @rating = Rating.find(params[:id])
    @beer = Beer.find(@rating.beer.id)
  end

  def new
    @rating = Rating.new
    @beer = Beer.find_by_id(params[:beer_id])
  end

  def edit
    @rating = Rating.find(params[:id])
    @beer = Beer.find(@rating.beer.id)
  end

  def create
    @rating = Rating.new(params[:rating])
    @rating.member_id = @current_member.id
    if @rating.save
      redirect_to session[:return_to], notice: 'Your rating was successful. Have another beer.'
    else
      render action: "new"
    end
  end

  def update
    @rating = Rating.find(params[:id])
      if @rating.update_attributes(params[:rating])
          redirect_to @rating, notice: 'Your rating successfully updated.'
      else
        render action: "edit"
      end
  end

  def destroy
    @rating = Rating.find(params[:id])
    @rating.destroy
    
    redirect_to root_url
  end
end
