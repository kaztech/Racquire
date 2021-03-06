class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

def after_sign_in_path_for(resource_or_scope)
  session.fetch 'user_return_to', recruiter_dash_path
end

end
