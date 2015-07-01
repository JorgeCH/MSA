class Job < ActiveRecord::Base

	scope :ultimos, ->{ order("created_at DESC") }
	validates :title, :description, :contact, presence: true
	
end
