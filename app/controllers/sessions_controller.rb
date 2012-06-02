class SessionsController < ApplicationController
  
  def new
    
  end
  
  def create
	member = Member.find_by_email(params[:email])
  	if member
  		if member.authenticate(params[:password])
  			session[:mid] = member.id
  			redirect_to member_url(member.id), notice: "Let's Get our BeerOn!"
  		else
  			flash.now[:notice] = "Unknown email or password"
  			render :new
  		end
  	else
  		flash.now[:notice] = "Unknown email or password"
  		render :new
    end
	end
  
  def destroy
  	reset_session
  	redirect_to root_url, notice: "See you next time!" 
  end
  
end