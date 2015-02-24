class RegistrationsController < ApplicationController
	
	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			# TODO: UserMailer.welcome(@user).deliver_now
			
			# We create the empty project: "Portfolio", for all separate photos
			# TODO: Validate the creation
			create_empty_project
			redirect_to user_path(@user)
		else
			render :new
		end
		rescue ActiveRecord::RecordNotUnique
			@user.errors.add(:email, "There is already a user with this email")

			render :new
	end

	private

	def user_params
		params.require(:user).permit(:username, :email, :born, :password, :password_confirmation)
	end

	def create_empty_project
		user.projects.create(
			name: "Portfolio"
			)
	end
end
