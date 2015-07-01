class Board < ActiveRecord::Base

	validates :name, :position, :email, :year, :photo, presence: true
	
end
