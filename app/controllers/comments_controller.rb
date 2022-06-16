class CommentsController < ApplicationController

  def create
    @task = Task.find(params[:task_id])
    @comment = @task.comments.build(comment_params)
    @comment.user_id = current_user.id
    @comment.save
    redirect_to request.referer
  end

  def destroy
    # @task = Task.find(params[:id])
    # @comment = @task.comments
    @comment = Comment.find(params[:task_id])
    @comment.destroy
    redirect_to request.referer
  end
  
  private
  
  def comment_params
    params.require(:comment).permit(:content)
  end
end
