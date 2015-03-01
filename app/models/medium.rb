class Medium < ActiveRecord::Base
	belongs_to :project

	validates :mediatype, :link, :project_id, presence: true
	# validates :mediatype, inclusion: { in: %w(video, photo), message: "%{value} is not a valid media (at least yet!)" } 
end