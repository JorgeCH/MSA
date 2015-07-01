class Formality < ActiveRecord::Base

	scope :ultimos, ->{ order("created_at DESC") }

	validates :name, :description, :image, presence: true
	
end
