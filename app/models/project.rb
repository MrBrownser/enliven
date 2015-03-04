class Project < ActiveRecord::Base
	has_attached_file :main_picture, styles: { medium: "300x300>", thumb: "100x100>" }
	
	validates :name, :user_id, presence: true
	validates_attachment_content_type :main_picture, :content_type => /\Aimage\/.*\Z/
	
	belongs_to :user
	has_many :media
end