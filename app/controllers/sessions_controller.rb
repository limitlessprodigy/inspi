class SessionsController < ApplicationController
  
  def profile
  end

  def new
  end

  def logout
  	session[:signed_in] = false
  	redirect_to '/index'
  end

  def destroy
  	session.delete(:user_id)
  end


end
