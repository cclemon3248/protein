class FavoritesController < ApplicationController

  def create
    @favorite = Favorite.new
    @favorite.user_id = current_user.id
    @favorite.task_id = params[:task_id]
    @favorite.save

    if Rails.application.routes.recognize_path(request.referrer) == {:controller=>"tasks", :action=>"index"}
      redirect_to tasks_path
    else
      redirect_to task_path(params[:task_id])
    end
  end
 
  def destroy
    @favorite = current_user.favorites.find_by(id: params[:id])
    @favorite.destroy

    if Rails.application.routes.recognize_path(request.referrer) == {:controller=>"tasks", :action=>"index"}
      redirect_to tasks_path
    else
      redirect_to task_path(@favorite.destroy.task_id)
    end
  end
end