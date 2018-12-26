class ApplicationController < ActionController::Base

  private

  def authentication
     if !logged_in
        redirect to new_session_path
      end
  end

  def logged_in?
    #session[:user_id]
    !!current_practitioner
  end

  def current_practitioner
    @current_practitioner || Practitioner.find(session[:practitioner_id]) if session[:practitioner_id]
  end

end
