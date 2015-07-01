class Scholarship < ActiveRecord::Base

	scope :ultimos, ->{ order("created_at DESC") }
	validates :name, :description, :address, :link, presence: true
	
end
