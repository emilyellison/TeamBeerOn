class Member < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation

  has_secure_password
  before_save { |member| member.email = email.downcase }
  
  has_many :ratings
  has_many :beer_me_searches
  
  validates :name,  presence: true, 
                    length: { maximum: 30 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, 
                    length: { maximum: 50 }, 
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

end
