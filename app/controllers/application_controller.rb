class ApplicationController < ActionController::Base
helper_method :current_user
  private
  def authentication
     if !logged_in?
        redirect_to root_path
      end
  end


  def logged_in?
    #session[:user_id]
    !!current_user
  end


  def current_user
    @current_user || User.find(session[:user_id]) if session[:user_id]
  end

end
