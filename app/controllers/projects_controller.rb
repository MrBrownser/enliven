class ProjectsController < ApplicationController

	def show
		# TODO: Redirect to user's profile with the project filtered
		@user = User.find_by username: params[:user_username]
		@project = @user.projects.find params[:id]
		@media = @project.media
	end

	def index
		@user = User.find_by username: params[:user_username]
		@projects = @user.projects
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)
		if @project.save
			redirect_to user_path(@user.username)
		else
			render :new
		end
		rescue ActiveRecord::RecordNotUnique
			@user.errors.add(:email, "There is already a user with this email")

			render :new
	end

	private

	def user_params
		params.require(:user).permit(:username, :email, :profile_picture, :password, :password_confirmation)
	end

end
