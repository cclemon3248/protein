class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @favorite_id = current_user.id
    @favorites = Favorite.where(user_id: @favorite_id)
  end

  def destroy
    session.delete(:user_id)
    flash[:notice] = 'ログアウトしました'
    redirect_to new_user_session_path
  end
end
