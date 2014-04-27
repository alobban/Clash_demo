class Listing < ActiveRecord::Base
	belongs_to :county
	belongs_to :parish
	
end
