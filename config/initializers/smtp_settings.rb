ActionMailer::Base.smtp_settings = {
  :address              => 'smtp.gmail.com',
  :port                 => 587,
  :domain               => 'gmail.com',
  :user_name            => 'beeron2012',
  :password             => 'codeacademybeer',
  :authentication       => 'plain',
  :enable_starttls_auto => true
}