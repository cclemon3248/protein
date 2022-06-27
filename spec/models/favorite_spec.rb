require 'rails_helper'
describe 'お気に入りモデル機能', type: :model do
  describe 'バリデーションのテスト' do
    let!(:user1) { FactoryBot.create(:user) }
    let!(:task1) { FactoryBot.create(:task, user_id: user1.id) }
    
    it 'ユーザーidが空白' do
      @favorite = Favorite.new(user_id: "", task_id: task1.id)
      @favorite.valid?
      expect(@favorite.valid?).to eq(false)
    end

    it 'タスクーidが空白' do
      @favorite = Favorite.new(user_id: user1.id, task_id: "")
      @favorite.valid?
      expect(@favorite.valid?).to eq(false)
    end
  end
end