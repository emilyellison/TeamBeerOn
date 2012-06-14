class SessionsController < ApplicationController
  
  def new
    
  end
  
  def create
	member = Member.find_by_email(params[:email])
  	if member
  		if member.authenticate(params[:password])
  			session[:mid] = member.id
  			flash[:success] = "Welcome, #{member.name.split(' ').first}! Let\'s get your BeerOn!"
  			redirect_to member_url(member.id)
  		else
  			flash.now[:error] = "Invalid email/password."
  			render :new
  		end
  	else
  		flash.now[:error] = "Invalid email/password."
  		render :new
    end
	end
  
  def destroy
  	reset_session
  	redirect_to root_url, notice: "See you next time!" 
  end
  
end