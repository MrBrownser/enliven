class User < ActiveRecord::Base
	validates :name, :email
end
