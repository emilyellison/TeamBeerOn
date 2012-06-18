class MembersController < ApplicationController
 
  before_filter :redirect_if_not_logged_in, only: [ :show, :edit, :update ]
  before_filter :redirect_if_logged_in, only: [ :new, :create ]
  before_filter :redirect_if_user_doesnt_match, only: [ :show, :edit, :update ]
  
  def new
    @member = Member.new
  end

  def show
  	@member = Member.find(params[:id])
  	@ratings = Rating.order('created_at DESC').paginate(page: params[:page], :per_page => 5).find_all_by_member_id(params[:id])
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
			  
end
