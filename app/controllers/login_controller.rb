class LoginController < ApplicationController

	def create
		user = User.where(email: params[:email]).first

		if !user
			flash[:warning] = "The email introduced is not registered"
		else
			if user.authenticate(params[:password])
				# Session engaged
				flash[:success] = "Login sucessful! Welcome #{user.username}!"

				session[:current_user_name] = user.username
			else
				flash[:error] = "Login was not sucessful, check the password provided"
			end
		end
		
		redirect_to root_path
	end

	def destroy
		temp_username = session[:current_user_name]

		session[:current_user_name] = nil

		flash[:notice] = "You correctly logged out. See you soon #{temp_username}!"

		respond_to do |format|
			format.html { redirect_to root_path }
			format.js   { render js: "window.location.href='#{root_path}'" }
		end
	end
end
