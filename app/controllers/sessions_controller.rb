class SessionsController < ApplicationController

  def new
  end

  def create
   @user = Practitioner.find_by(user_name: params[:user_name])

     if practitioner && practitioner.authenticate(params[:password])
     session[:user_id] = user.id
     #this is how we login

     redirect_to root_path
    else
       render “sessions/new”
    end
  end

  def destroy
    reset_session
  end


end
