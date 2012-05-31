class SessionsController < ApplicationController
  
  def new
    
  end
  
  def create
	member = Member.find_by_email(params[:email])
	if member
		if member.authenticate(params[:password])
			sessions[:id] = user.id
			redirect_to root_url, notice: "Let's Get our BeerOn!"
		else
			flash[:notice] = "Unknown email or password"
			render :new

		end
		else
			flash[:notice] = "Unknown email or password"
			render :new
    	end
	end
  end
  
  def destroy
	reset_session
	redirect_to root_url, notice: "See you next time!"
    
  end
  
