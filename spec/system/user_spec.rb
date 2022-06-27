require 'rails_helper'
RSpec.describe 'テスト', type: :system do

  describe 'ユーザーのCRUD機能テスト' do
    it '新規登録' do
      visit new_user_registration_path
      fill_in "ユーザー名", with: "monster"
      fill_in "メール", with: "cclemon3248@yahoo.co.jp"
      fill_in "パスワード", with: "s5mYmhCy"
      fill_in "パスワード（確認）", with: "s5mYmhCy"
      click_button "アカウント登録"
      expect(page).to have_content 'monster'
    end

    it 'アカウント確認' do
      visit new_user_session_path
      click_link "ゲストログイン"
      click_link "アカウント"
      expect(page).to have_content 'ゲスト'
    end

    it 'アカウント編集' do
      visit new_user_registration_path
      fill_in "ユーザー名", with: "monster"
      fill_in "メール", with: "cclemon3248@yahoo.co.jp"
      fill_in "パスワード", with: "s5mYmhCy"
      fill_in "パスワード（確認）", with: "s5mYmhCy"
      click_button "アカウント登録"
      click_link "編集"
      fill_in "ユーザー名", with: "野菜"
      fill_in "メール", with: "cclemon3247@gmail.com"
      fill_in "パスワード", with: "s5mYmhCy1"
      fill_in "パスワード（確認）", with: "s5mYmhCy1"
      fill_in "現在のパスワード", with: "s5mYmhCy"
      click_button "更新"
      visit new_user_registration_path
      expect(page).to have_content '野菜'
    end

    it 'アカウント削除' do
      visit new_user_session_path
      click_link "ゲストログイン"
      click_link "アカウント"
      click_link "編集"
      accept_confirm do
        click_button "アカウント削除"
      end
    end
  end


  describe 'アカウント確認' do
    it 'ログインをする' do
      visit new_user_session_path
      fill_in "メール", with: "cclemon3248@gmail.com"
      fill_in "パスワード", with: "s5mYmhCy"
      click_button "ログイン"
    end
    
    it 'ログアウトをする' do
      visit new_user_session_path
      click_link "ゲストログイン"
      click_link "ログアウト"
    end
  end

  describe 'アクセス制限' do
    before do
      user1 = FactoryBot.create(:user)
      task1 = FactoryBot.create(:task, user_id: user1.id)
    end
    it 'タスク編集制限' do
      visit new_user_session_path
      click_link "ゲストログイン"
      visit tasks_path
      visit edit_task_path(Task.all[0].id)
    end

    it 'ユーザー編集制限' do
      visit new_user_session_path
      click_link "ゲストログイン"
      visit edit_user_registration_path(User.all[1].id)
    end
  end
end