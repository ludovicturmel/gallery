class SessionsController < ApplicationController
  layout 'login'

  def new
  end

  #recup des data du form pour le login et test validation
  def create
  	if params[:name] == 'maoui' && params[:password] == 'f0T0$313'
  		session[:logged] = true
  		redirect_to admins_url
  	else
  		session[:logged] = false
  		redirect_to login_url, :alert => "Invalid user/password combination"
  	end
  end

  #detruire la session
  def destroy
  	session[:logged] = false
  	redirect_to galleries_url, :notice => "Logged out"
  end
end
