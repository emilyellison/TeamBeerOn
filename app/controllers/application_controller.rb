class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :find_logged_in_member
  
  def find_logged_in_member
    @current_member = Member.find_by_id(session[:mid])
  end
end
