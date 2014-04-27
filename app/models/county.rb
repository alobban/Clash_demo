class County < ActiveRecord::Base
	has_many :parishes
	has_many :listings
	
end
