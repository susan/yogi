class RoutinesController < ApplicationController

	def index
		if current_user
      @routines = current_user.routines
    else
    @routines = []
    end
	end

	def show
    find_routine
	end

	def new
  @routine = Routine.new
  end

  def create
  	@routine = current_user.routines.create(params_routine)
    if @routine.save

  	  redirect_to @routine

    else
      flash[:errors] = @routine.errors.full_messages
      render :new
    end

  end

  def edit
    find_routine
  end

  def update
  	find_routine
  	@routine = current_user.routines
    if @routine.update(params_routine)

    redirect_to @routine[0]

    else
      flash[:errors] = @routine.errors.full_messages
      render :edit
    end
  end

  def destroy
    find_routine
    @routine.destroy
    redirect_to routines_path
  end



  private

  def find_routine
    @routine = Routine.find(params[:id])
  end

  def params_routine
    params.require(:routine).permit(:name, :user_id)
   end

end
