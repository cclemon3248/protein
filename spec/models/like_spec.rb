require 'rails_helper'
describe 'いいねモデル機能', type: :model do
  describe 'バリデーションのテスト' do
    let!(:user1) { FactoryBot.create(:user) }
    let!(:task1) { FactoryBot.create(:task, user_id: user1.id) }
    
    it 'ユーザーidが空白' do
      @like = Like.new(user_id: "", task_id: task1.id)
      @like.valid?
      expect(@like.valid?).to eq(false)
    end

    it 'タスクーidが空白' do
      @like = Like.new(user_id: user1.id, task_id: "")
      @like.valid?
      expect(@like.valid?).to eq(false)
    end
  end
end