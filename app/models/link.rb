class Link < ActiveRecord::Base

	scope :ultimos, ->{ order("created_at DESC") }

	validates :title, :link, presence: true
	
end
