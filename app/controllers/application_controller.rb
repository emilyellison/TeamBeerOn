class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :find_logged_in_member
  
  def find_logged_in_member
    @current_member = Member.find_by_id(session[:mid])
  end
  
  def redirect_if_not_logged_in
    if @current_member.nil?
      flash[:error] = 'You must be signed in first.'
      redirect_to sign_in_url
    end
  end
  
end
