class HomeController < ApplicationController

	def index
	  @users = User.all
	end

	def get_current_user
		@current_user = current_user
		if current_user?
			redirect_to users_show_path
		end
	end
	
end
