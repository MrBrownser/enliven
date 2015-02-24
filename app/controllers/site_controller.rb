class SiteController < ApplicationController

	before_action :load_best_projects, only: :home

	def home
	end

	def load_best_projects
		@projects = Project.all.order("total_likes DESC").limit(20)
		@author_names = {}
		@projects.each do |project|
			author = User.find(project.user_id)
			@author_names[project.user_id] = author.username
		end
	end
end
