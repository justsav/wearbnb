class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :store_user_location!, if: :storable_location?
  before_action :authenticate_user!


  def configure_permitted_parameters
  # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])

  # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end

  def store_return_to
    session[:return_to] = request.url
  end

  def after_sign_in_path_for(resource_or_scope)
    stored_location_for(resource_or_scope) || super
  end

private

def storable_location?
  request.get? && is_navigational_format? && !devise_controller? && !request.xhr?
end

def store_user_location!
  store_location_for(:user, request.fullpath)
end
end
