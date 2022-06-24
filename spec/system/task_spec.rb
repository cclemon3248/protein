require 'rails_helper'
RSpec.describe 'テスト', type: :system do
  
  describe 'タスクのCRUD機能テスト' do

    it 'タスク作成' do
      visit new_user_session_path
      click_link 'ゲストログイン'
      visit new_task_path
      select "ローソン", from: "task_store"
      fill_in "商品名", with: 1
      fill_in "タンパク質量", with: 1
      fill_in "カロリー", with: 1
      fill_in "値段", with: 1
      attach_file '画像', "#{Rails.root}/public/lawson/6001.png"
      binding.irb
      # click_button "タスクを登録する"

    end

    it 'タスク詳細' do
    end

    it 'タスク編集' do
    end

    it 'タスク削除' do
    end

  end
end