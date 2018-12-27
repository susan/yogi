class RoutinePosesController < ApplicationController

  def new
  	@routine_pose = RoutinePose.new
  	@routines = current_user.routines
  	@yoga_poses = YogaPose.all
  end

  def create
  	@routine_pose = RoutinePose.new(routine_pose_params)
    @routine_pose.save
    	redirect_to(@routine_pose.yoga_pose)
    	#redirect to yoga_pose show page
   end

   private
   def routine_pose_params
     params.require(:routine_pose).permit(:yoga_pose_id, :routine_id)
   end


end
