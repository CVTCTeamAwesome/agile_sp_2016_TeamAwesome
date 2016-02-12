class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :authenticate, :only => [:new, :edit, :destroy]
  
  
  def authenticate
    authenticate_or_request_with_http_basic do | user_name, password|
      session[:logged_in] = (user_name == ENV['USER_NAME'] && password == ENV['PASSWORD'])
    end
  end
  
  helper_method :logged_in?
  
  def logged_in?
    session[:logged_in]
  end
  
end
