class Prearrival < ActiveRecord::Base

	scope :ultimos, ->{ order("created_at DESC") }
	
	validates :title, :description, :image, presence: true
end
