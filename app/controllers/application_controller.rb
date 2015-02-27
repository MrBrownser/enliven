class ApplicationController < ActionController::Base
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	include Pundit
	
	protect_from_forgery with: :exception

	helper_method :current_user_name

	def current_user_name
		current_user_name = session[:current_user_name]
		if current_user_name
		  @current_user ||= User.find_by username: current_user_name
		end
	end
end
