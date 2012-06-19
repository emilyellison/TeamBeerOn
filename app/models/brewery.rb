class Brewery < ActiveRecord::Base
  attr_accessible :address, :city, :country, :name, :state, :website
  
  has_many :beers
  
  validates :name, presence: true
  
  def place
    if city.present? && state.present? && country.present?
      return "#{city}, #{state}, #{country}"
    elsif city.present? && state.present? && country.nil?
      return "#{city}, #{state}"
    elsif city.present? && state.nil? && country.present?
      return "#{city}, #{country}"
    elsif city.nil? && state.present? && country.present?
      return "#{state}, #{country}"
    elsif city.present? && state.nil? && country.nil?
      return "#{city}"
    elsif city.nil? && state.nil? && country.present?
      return "#{country}"
    elsif city.nil? && state.present? && country.nil?
      return "#{state}"
    else
      return nil
    end
  end
  
end
