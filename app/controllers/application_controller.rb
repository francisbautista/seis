class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_filter :set_no_cache
  before_action :configure_devise_permitted_parameters, if: :devise_controller?

  def set_no_cache
      response.headers["Cache-Control"] = "no-cache, no-store, max-age=0, must-revalidate"
      response.headers["Pragma"] = "no-cache"
      response.headers["Expires"] = "Fri, 01 Jan 1990 00:00:00 GMT"
  end

  def configure_devise_permitted_parameters
      registration_params = [:first_name, :middle_name, :last_name, :username, :position, :email, :password, :password_confirmation]

      if params[:action] == 'update'
          devise_parameter_sanitizer.for(:account_update) {
              |u| u.permit(registration_params << :current_password)
          }
      elsif params[:action] == 'create'
          devise_parameter_sanitizer.for(:sign_up) {
              |u| u.permit(registration_params)
          }
      end
  end

  rescue_from CanCan::AccessDenied do |exception|
    render :file => "#{Rails.root}/public/403.html", :status => 403, :layout => false
    ## to avoid deprecation warnings with Rails 3.2.x (and incidentally using Ruby 1.9.3 hash syntax)
    ## this render call should be:
    # render file: "#{Rails.root}/public/403", formats: [:html], status: 403, layout: false
  end
end
