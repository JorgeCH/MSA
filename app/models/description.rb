class Description < ActiveRecord::Base

	validates :name, :text, presence: true

end
