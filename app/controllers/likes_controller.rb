class LikesController < ApplicationController

  def create
    @like = Like.new
    @like.user_id = current_user.id
    @like.task_id = params[:task_id]
    @like.save

    if Rails.application.routes.recognize_path(request.referrer) == {:controller=>"tasks", :action=>"index"}
      redirect_to tasks_path
    else
      redirect_to task_path(params[:task_id])
    end
  end
 
  def destroy
    @like = current_user.likes.find_by(id: params[:id])
    @like.destroy

    if Rails.application.routes.recognize_path(request.referrer) == {:controller=>"tasks", :action=>"index"}
      redirect_to tasks_path
    else
      redirect_to task_path(@like.destroy.task_id)
    end
  end
end