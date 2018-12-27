class UsersController < ApplicationController

  def new
  	@user = User.new
  end

  def show
    @user = User.find(params[:id])
  end


  def create
  	@user = User.new

    @user.user_name = params[:user][:user_name]
  	@user.email = params[:user][:email]
    @user.password = params[:user][:password]

     if @user.save
        session[:user_id] = @user.id
        #grab user id and set it to session[:user_id] has to login

        redirect_to root_path

    else
      flash[:errors] = @user.errors.full_messages

      redirect_to new_user_path
    end

   def edit
    @user = User.find_by(user_name: params[:user_name])
  end

   def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      # Handle a successful update.
    else
      render 'edit'
    end
  end

  end

  private

    def user_params
      params.require(:user).permit(:user_name, :password)
    end


end
