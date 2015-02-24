class ApplicationController < ActionController::Base
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	include Pundit
	
	protect_from_forgery with: :exception

	helper_method :current_user

	def current_user
		current_user_id = session[:current_user_id]
		if current_user_id
		  @current_user ||= User.find(current_user_id)
		end
	end
end
