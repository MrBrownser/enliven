class User < ActiveRecord::Base
	has_secure_password
	has_attached_file :profile_picture, styles: { medium: "300x300>", thumb: "100x100>" }

	validates :username, :email, :born, presence: true
	validates_attachment_content_type :profile_picture, :content_type => /\Aimage\/.*\Z/

	has_many :projects, dependent: :destroy

	def create_empty_project
		self.projects.create(
			name: "Portfolio"
			)
	end
end