class ApplicationController < ActionController::Base
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception

	# Later I' ll use that
	# # http://apidock.com/rails/ActionController/Helpers/ClassMethods/helper_methodhelper_method :loggedin_usr
	# def loggedin_usr
	# 	loggedin_usr_id = session[:loggedin_usr_id]
	# 	if loggedin_usr_id
	# 		User.find(loggedin_usr_id)
	# 	end
	# end
end
