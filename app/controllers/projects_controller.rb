class ProjectsController < ApplicationController

	def show
		# TODO: Redirect to user's profile with the project filtered
		load_user()
		@project = @user.projects.find params[:id]
		@media = @project.media
	end

	def index
		load_user()
		@projects = @user.projects
	end

	def new
		@project = Project.new
	end

	def create
		load_user()
		@project = @user.projects.new(project_params)
		if @project.save
			redirect_to user_path(@user.username)
		else
			render :new
		end
	end

	private

	def load_user
		@user = User.find_by username: params[:user_username]
	end

	def project_params
		params.require(:project).permit(:name, :company, :description)
	end

end
