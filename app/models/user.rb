class User < ActiveRecord::Base
	has_secure_password

	validates :username, :email, :born, presence: true

	has_many :projects, dependent: :destroy

	def create_empty_project
		self.projects.create(
			name: "Portfolio"
			)
	end
end