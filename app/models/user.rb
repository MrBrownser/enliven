class User < ActiveRecord::Base
	has_secure_password

	validates :username, :email, :born, presence: true

	has_many :projects, dependent: :destroy
end