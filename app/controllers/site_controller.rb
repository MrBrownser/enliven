class SiteController < ApplicationController

	before_action :load_best_projects, only: :home

	def home
	end

	def load_best_projects
		@projects = Project.all.order("total_likes DESC").includes(:user).limit(20)
	end
end