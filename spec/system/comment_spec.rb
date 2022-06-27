require 'rails_helper'
RSpec.describe 'テスト', type: :system do
  describe 'コメント機能' do
    
    before do
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
    end
    
    it 'コメント作成' do
      fill_in "コメント", with: "qwerty"
      click_button "コメントを投稿する"
      expect(page).to have_content 'qwerty'
    end

    it 'コメントが空白' do
      fill_in "コメント", with: ""
      click_button "コメントを投稿する"
      @comment = Comment.all[0]
      expect(@comment).to eq nil
    end
  end
end