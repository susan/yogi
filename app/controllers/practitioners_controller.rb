class PractitionersController < ApplicationController

  def new
  	@practitioner = Practitioner.new
  end

  def show
    @practitioner = Practitioner.find(params[:id])
  end


  def create
  	@practitioner = Practitioner.new

    @practitioner.user_name = params[:practitioner][:user_name]
  	@practitioner.email = params[:practitioner][:email]
    @practitioner.password = params[:practitioner][:password]

     if @practitioner.save
        session[:practitioner_id] = practitioner.id

        redirect_to root_path

    else
      flash[:errors] = @practitioner.errors.full_messages

      redirect_to new_practitioner_path
    end

  end

  private

    def practitioner_params
      params.require(:practitioner).permit(:user_name, :password)
    end


end
