class Users::SessionsController < Devise::SessionsController
  def guest_sign_in
    user = User.guest
    sign_in user
    redirect_to tasks_path, notice: 'ゲストユーザーとしてログインしました。'
  end

  def admin_sign_in
    user = User.admin
    sign_in user
    redirect_to tasks_path, notice: 'ゲスト管理人としてログインしました。'
  end
end