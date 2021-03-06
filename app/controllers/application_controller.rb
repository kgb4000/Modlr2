class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

   before_filter :configure_permitted_parameters, if: :devise_controller?

   

def after_sign_in_path_for(resource)
  session[:previous_url] || root_path
end

	protected

	 def configure_permitted_parameters
	   devise_parameter_sanitizer.for(:sign_up) << :name
	   devise_parameter_sanitizer.for(:account_update) << :name
	   devise_parameter_sanitizer.for(:sign_in) << :name
	 end

  def index
		@cast = Cast.find(:all)
		@casts = Cast.all
		@pin =Pin.find(:all)
		@pins = Pin.all
	end

	protect_from_forgery
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end
	
end
