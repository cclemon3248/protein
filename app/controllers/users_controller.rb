class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @favorite_id = current_user.id
    @favorites = Favorite.where(user_id: @favorite_id)
    
  end

end
