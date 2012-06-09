class MemberMailer < ActionMailer::Base
  default from: "beeron2012@gmail.com"
  
  def confirm(new_member)
    @member = new_member
    
    mail to: new_member.email,
    from: "beeron2012@gmail.com",
    subject: "Thanks for joining BeerOn!"
    
  end
end


