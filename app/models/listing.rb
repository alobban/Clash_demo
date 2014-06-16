class Listing < ActiveRecord::Base
	belongs_to :county
	belongs_to :parish

	before_save :titleize_city
	before_create :titleize_city

	def titleize_city
		self.town = self.town.titleize
	end
	
end
