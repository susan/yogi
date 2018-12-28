class SessionsController < ApplicationController

  def new
  end

  def create
   user = User.find_by(user_name: params[:user_name])

     if user && user.authenticate(params[:password])
     session[:user_id] = user.id
     #this is how we login
      redirect_to user_path(user.id)
     #redirect_to routines_url
    else
       redirect_to new_session_path
    end
  end

  def destroy
    reset_session
  end


end
