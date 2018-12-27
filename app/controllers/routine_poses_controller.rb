class RoutinePosesController < ApplicationController
  def show
    find_routine_pose
  end

  def new
  	@routine_pose = RoutinePose.new
  	@routines = current_user.routines
  	@yoga_poses = YogaPose.all
  end

  def create
  	@routine_pose = RoutinePose.new(routine_pose_params)
    @routine_pose.save
      redirect_to(@routine_pose.routine)
    	#redirect_to(@routine_pose.yoga_pose)
    	#redirect to yoga_pose show page
   end

  def edit
    find_routine_pose
    @routines = current_user.routines
    @yoga_poses = YogaPose.all
      render :edit
  end

  def update
    find_routine_pose
    @routine_pose.update(routine_pose_params)
  end

  def destroy
    @routine_pose.destroy
    redirect to routines_url
  end



  private
    def find_routine_pose
    @routine_pose = RoutinePose.find(params[:id])
  end

  def routine_pose_params
    params.require(:routine_pose).permit(:yoga_pose_id, :routine_id)
  end


end
