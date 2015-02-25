class Project < ActiveRecord::Base
	validates :name, :user_id, presence: true
	belongs_to :user
	has_many :projectmedium

end