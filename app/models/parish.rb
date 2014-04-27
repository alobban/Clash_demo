class Parish < ActiveRecord::Base
	belongs_to :county
	has_many :listings
	
end
