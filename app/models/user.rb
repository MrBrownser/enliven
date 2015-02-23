class User < ActiveRecord::Base
	has_secure_password

	validates :username, :email, :born, presence: true
end
