class Branch < ActiveRecord::Base
  belongs_to :pharmacy
  
  attr_accessible :address, :commune, :city, :latitude, :longitude

  geocoded_by :generate_address
  after_validation :geocode, :if => :address_changed?

  def generate_address
  	"#{address}, #{commune}, #{city}"
  end
end
