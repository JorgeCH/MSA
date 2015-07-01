class Life < ActiveRecord::Base

	scope :ultimos, ->{ order("created_at DESC") }

	validates :title, :description, :image1, :image2, :image3, :photo, presence: true
	
end
