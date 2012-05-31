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
			redirect_to root_url, notice: "Now you can get your BeerOn!"
		else
			render action: "new"
		end
   end
	
	def update
		@member = Member.find(params[:id])
			if @member.update_attributes(params[:member])
				redirect_to @member, notice: "Member successfully updated."
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
