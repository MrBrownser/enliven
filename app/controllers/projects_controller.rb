class ProjectsController < ApplicationController
	def show
		# TODO: Redirect to user's profile with the project filtered
		user = User.find_by username: params[:user_username]
		project_id = user.projects.find params[:id]
		session[:project_id] = params[:id]
		
		redirect_to user_path(user.username, project_id: params[:id])
	end
end
