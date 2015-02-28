class UsersController < ApplicationController
	before_action :load_user, except: :index

	def index
		page  = params[:page].to_i || 1

		@users = User.order("username ASC").page(page)
	end

	def show
	end

	def edit
	end

	def info
	end
	
	def update
		if @user.update_attributes(user_params)
			flash[:notice] = "User updated successfully"
			redirect_to user_path(@user.username)
		else
			flash[:error]  = "Ops! We couldn't update the user, please review the errors"
	
			render :edit
		end
	end

	private

	def load_user
    	@user = User.find_by username: params[:username]
  	end

  	def user_params
    	params.require(:user).permit(:username, :fullname, :styles, :summary, :born, :profile_picture, :nationality, :ethnicity, :languages, :height, :chest, :waist, :hips, :suit, :shirt, :pants, :shoes, :eyes, :hair, :actingexp, :battleexp, :adsexp, :teachingexp)
  	end

  	def deny_access
		render text: "Your are not authorized to perform this action", status: :unauthorized
  end
end
