class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :check_user_logged_in

  protect_from_forgery with: :exception
  layout "application"

  private

  def check_user_logged_in 
    redirect_to new_sessions_path unless current_user.present?
  end
  
  def current_user
    @current_user ||= begin
      if session[:user_id]
        User.find(session[:user_id])
      else
        NullObject.new
      end
    end
  end

  helper_method :current_user
end

class NullObject < BasicObject
  def method_missing(meth, *args, &block)
    nil
  end
end