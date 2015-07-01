class Announcement < ActiveRecord::Base

	scope :ultimos, ->{ order("created_at DESC") }

	validates :title, :description, presence: true
	
end
