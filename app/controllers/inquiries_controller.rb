class InquiriesController < ApplicationController
  
  def new
    @inquiry = Inquiry.new
  end
  
  def create
    @inquiry = Inquiry.new(params[:inquiry])
    
    if @inquiry.save
      flash[:success] = 'Your message has been sent!'
      ContactUsMailer.contact_me(@inquiry).deliver
      redirect_to root_url
    else
      render :action => 'new' 
    end

  end
  
end