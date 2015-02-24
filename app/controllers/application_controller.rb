class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :check_user_logged_in
  # before_action LoginFilter

  protect_from_forgery with: :exception
  layout "application"

  private

  def check_user_logged_in
    if current_user.nil?
      redirect_to new_sessions_path
    end
  end
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
end

# class LoginFilter
#   def self.before(controller)
#     unless controller.is_a?(SessionsController)
#       if current_user.nil?
#         flash[:error] = "You must be logged in to access this section"
#         redirect_to new_sessions_path
#       end
#     end
#   end
# end