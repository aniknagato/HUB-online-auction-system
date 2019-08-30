class SessionsController < ApplicationController
  def new
  end

  def create
    userb = Bidderprofile.find_by(username: params[:username])
    usera = Adminprofile.find_by(username: params[:username])
    if userb and userb.authenticate(params[:password])
      session[:user_id] = userb.id
      session[:role] = "bidder"
      session[:username] = params[:username]
      
      redirect_to bidderprofile_url(session[:user_id])

    elsif usera and usera.authenticate(params[:password])
      session[:user_id] = usera.id
      session[:role] = "admin"
      session[:username] = params[:username]
      
      redirect_to adminprofile_url(session[:user_id])
    
    else
      redirect_to login_url, alert:"Invalid Username or Password"
    end

  end

  def destroy
    session[:user_id] = nil
    session[:role] = nil
    redirect_to login_url, alert:"Successfully logged out."
  end
end
