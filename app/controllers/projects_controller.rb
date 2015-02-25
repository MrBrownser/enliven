class ProjectsController < ApplicationController
	def show
		# TODO: Redirect to user's profile with the project filtered
		redirect_to user_path(User.first)
	end
end
