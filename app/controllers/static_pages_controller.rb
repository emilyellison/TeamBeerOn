class StaticPagesController < ApplicationController

  def home
    
  end
  
  def about
    @teams = Team.all
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
  end

end