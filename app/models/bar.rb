class Bar < ActiveRecord::Base
  attr_accessible :address, :city, :close_friday, :close_monday, :close_saturday, :close_sunday, :close_thursday, :close_tuesday, :close_wednesday, :name, :open_friday, :open_monday, :open_saturday, :open_sunday, :open_thursday, :open_tuesday, :open_wednesday, :phone, :state, :website, :zip

  has_many :beer_experiences
  has_many :beers, through: :beer_experiences
  has_many :beer_me_searches
  
  validates :name, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true
  validates :phone, presence: true, length: { is: 10 }

end
