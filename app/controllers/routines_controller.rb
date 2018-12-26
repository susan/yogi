class RoutinesController < ApplicationController

	def index
    @routines = Routine.all
	end

	def show
    find_routine
	end

	def new
  @routine = Routine.new
  end

  def create
  	@routine = Routine.create(params_routine)
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
  	if @routine.update(params_routine)

  	  redirect_to @routine

    else
      flash[:errors] = @routine.errors.full_messages
      render :edit
    end

  end


	private

	def find_routine
    @routine = Routine.find(params[:id])
	end

	def params_routine
    params.require(:routine).permit(:name)
	end

end
