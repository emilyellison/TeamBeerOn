class RatingsController < ApplicationController

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
    @beer = Beer.find_by_id(params[:beer_id])
  end

  def create
    @rating = Rating.new(params[:rating])
    @rating.member_id = @current_member.id
    if @rating.save
      redirect_to member_url(@current_member.id), notice: 'Thanks for rating this beer!'
    else
      render action: "new"
    end
  end

  def update
    @rating = Rating.find(params[:id])
      if @rating.update_attributes(params[:rating])
          redirect_to @rating, notice: 'Rating successfully updated.'
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
