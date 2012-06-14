class MembersController < ApplicationController
 
  def new
    @member = Member.new
  end

  def show
  	@member = Member.find(params[:id])
  end
  
  def edit
	  @member = Member.find(params[:id])
  end

  def create
	@member = Member.new(params[:member])
	
		if @member.save
		  # Tell the MemberMailer to send a welcome Email after save
      MemberMailer.confirm(@member).deliver
      session[:mid] = @member.id
      flash[:success] = "Welcome to BeerOn, #{@member.name.split(' ').first}!"
			redirect_to @member
		else
			render action: "new"
		end
   end
	
	def update
		@member = Member.find(params[:id])
			if @member.update_attributes(params[:member])
			  flash[:success] = "Your profile has been updated."
				redirect_to @member
			else
				render action: "edit"
			end
	end

	def destroy
		@member = Member.find(params[:id])
		@member.destroy
		
		redirect_to root_url
	end
			  
end
