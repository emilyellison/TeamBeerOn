require 'open-uri'

class MembersController < ApplicationController
 
  def new
    @member = Member.new
  end

  def show
  	@member = Member.find(params[:id])
  	@ratings = Rating.order('created_at DESC').paginate(page: params[:page], :per_page => 5).find_all_by_member_id(params[:id])
    
    @tweets = []
  	@json_hash = JSON.parse(open('http://search.twitter.com/search.json?q=beeron2012&rpp=5&include_entities=true&with_twitter_user_id=true&result_type=mixed').read)
    @json_hash['results'].each do |json| 
      @tweets << { id: json['id'],
                   created_at: json['created_at'],
                   text: json['text'], 
                   from_user: json['from_user'],
                   from_user_name: json['from_user_name'] }
    end
    @json_user = JSON.parse(open('http://api.twitter.com/1/statuses/user_timeline.json?screen_name=BeerOn2012').read)
    @json_user.each do |json| 
      @tweets << { id: json['id'],
                   created_at: json['created_at'], 
                   text: json['text'], 
                   from_user: json['user']['screen_name'],
                   from_user_name: json['user']['name'] }
    end
    @tweets.uniq! {|e| e[:id]}
    #@tweets = @tweets.sort_by! { |a| a[:created_at] }
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
