class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #before_action :authorize
  
  def authorize
    # debugger
    unless session[:user_id] != nil
      redirect_to login_url
    end
  end
end
