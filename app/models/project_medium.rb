class ProjectMedium < ActiveRecord::Base
	belongs_to :project

	validates :type, :link, :project_id, presence: true
	validates :type, inclusion: { in: %w(video, photo), message: "#{value} is not a valid media (at least yet!)" } 
end
