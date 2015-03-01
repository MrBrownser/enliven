class ProjectsController < ApplicationController
	def show
		# TODO: Redirect to user's profile with the project filtered
		@user = User.find_by username: params[:user_username]
		@project = @user.projects.find params[:id]
		@media = @project.media
	end
end
