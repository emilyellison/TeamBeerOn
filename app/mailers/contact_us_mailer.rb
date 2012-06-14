class ContactUsMailer < ActionMailer::Base
  default to: "BeerOn2012@gmail.com"
  
  def contact_me(inquiry)
    @inquiry = inquiry
    @url = 'http://beeron.herokuapp.com'
    mail(:from => inquiry.email, :subject => 'User Feedback')
  end
end
