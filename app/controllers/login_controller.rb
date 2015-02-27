class LoginController < ApplicationController

	def create
		user = User.where(email: params[:email]).first

		# Session engaged
		if user && user.authenticate(params[:password])
			flash[:success] = "Login sucessful! Welcome #{user.username}!"

			session[:current_user_name] = user.username
		else
			flash[:error] = "Login was not sucessful"
		end

		redirect_to root_path
	end

	def destroy
		session[:current_user_name] = nil

		respond_to do |format|
			format.html { redirect_to root_path }
			format.js   { render js: "window.location.href='#{root_path}'" }
		end
	end
end
