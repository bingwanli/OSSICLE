class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    # NEED TO ADD BIO AND PORTFOLIO FOR DESIGNERS LATER
    devise_parameter_sanitizer.permit(:sign_up, keys: [:prof_pic, :name])
    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:prof_pic])
  end
end
