require 'open-uri'

class MembersController < ApplicationController
 
  def new
    @member = Member.new
  end

  def show
  	@member = Member.find(params[:id])
  	@json = JSON.parse(open('http://search.twitter.com/search.json?q=beeron2012&rpp=5&include_entities=true&with_twitter_user_id=true&result_type=mixed').read)
    @tweets = []
    @json['results'].each do |json| 
      @tweets << { created_at: json['created_at'], 
                   text: json['text'], 
                   hashtags: json['entities']['hashtags'],
                   from_user: json['from_user'],
                   from_user_name: json['from_user_name'] }
    end
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
