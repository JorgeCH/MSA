class Activity < ActiveRecord::Base
	
	scope :ultimos, ->{ order("created_at DESC") }

	validates :name, :date, :place, :description, :linkfb, :contact, :photo1, :photo2, presence: true

end
