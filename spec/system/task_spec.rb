require 'rails_helper'
RSpec.describe 'テスト', type: :system do
  describe 'タスクのCRUD機能テスト' do
    task1 = FactoryBot.create(:task)

    it 'タスク作成' do
      visit new_user_session_path
      click_link 'ゲストログイン'
      visit new_task_path
      select "ローソン", from: "task_store"
      fill_in "商品名", with: "おじさん"
      fill_in "タンパク質量", with: 1
      fill_in "カロリー", with: 1
      fill_in "値段", with: 1
      attach_file '画像', "#{Rails.root}/public/lawson/6001.png"
      click_button "タスクを登録する"
      expect(page).to have_content 'おじさん'
    end

    it 'タスク詳細' do
      visit new_user_session_path
      fill_in "メール", with: "cclemon3248@gmail.com"
      fill_in "パスワード", with: "s5mYmhCy"
      click_button "ログイン"
      visit tasks_path
      click_link "見る"
      expect(page).to have_content 'お肉'
    end

     it 'タスク編集' do
      visit new_user_session_path
      fill_in "メール", with: "cclemon3248@gmail.com"
      fill_in "パスワード", with: "s5mYmhCy"
      click_button "ログイン"
      visit tasks_path
      click_link "編集"
      select "セブンイレブン", from: "task_store"
      fill_in "商品名", with: "おばさん"
      fill_in "タンパク質量", with: 10
      fill_in "カロリー", with: 10
      fill_in "値段", with: 10
      attach_file '画像', "#{Rails.root}/public/lawson/6002.png"
      click_button "タスクを登録する"
      expect(page).to have_content 'おばさん'
     end

    it 'タスク削除' do
      visit new_user_session_path
      fill_in "メール", with: "cclemon3248@gmail.com"
      fill_in "パスワード", with: "s5mYmhCy"
      click_button "ログイン"
      visit tasks_path
      accept_confirm do
        click_link "削除"
      end
      expect(page).not_to have_content 'お肉'
    end
  end
end