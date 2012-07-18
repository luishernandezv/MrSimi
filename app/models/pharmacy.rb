class Pharmacy < ActiveRecord::Base
	extend FriendlyId

	has_many :branches
	attr_accessible :name
	friendly_id :name, :use => :slugged
end
