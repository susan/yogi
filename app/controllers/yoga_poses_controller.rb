class YogaPosesController < ApplicationController

  def index
    @yoga_poses = YogaPose.search(params[:search])
  end

  def show
    find_pose
  end

  def new
  	 @yoga_pose = YogaPose.new
  end

  def create
  	@yoga_pose =YogaPose.create(yoga_pose_params)
     if@yoga_pose.save

  	   redirect_to @yoga_pose
  	 else
  	    flash[:errors] = @yoga_pose.errors.full_messages
  	    render :new
  	 end
  end

  def edit
  	find_pose
  end

  def update
  	find_pose
    if @yoga_pose.update(yoga_pose_params)

       redirect_to @yoga_pose
    else
       flash[:errors] = @yoga_pose.errors.full_messages
  	   render :edit
  	end
  end

# def index
#   if params[:body_area]
#     @yoga_pose = YogaPose.where('body_area LIKE ?', "%#{params[:body_area]}%")
#   else
#     @yoga_pose = YogaPose.all
#   end
# end

  private

  def find_pose
    @yoga_pose = YogaPose.find(params[:id])
  end

  def yoga_pose_params
     params.require(:yoga_pose).permit(:name, :description, :img_url, :body_area_id, :search)
  end

end


