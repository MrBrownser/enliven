class RegistrationsController < ApplicationController
	
	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			# TODO: UserMailer.welcome(@user).deliver_now
			
			session[:current_user_name] = @user.username

			# We create the empty project: "Portfolio", for all separate photos
			# TODO: Validate the creation
			@user.create_empty_project
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
		params.require(:user).permit(:username, :email, :born, :fullname, :profile_picture, :password, :password_confirmation)
	end
end
