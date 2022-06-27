require 'rails_helper'
describe 'コメントモデル機能', type: :model do
  describe 'バリデーションのテスト' do
    let!(:user1) { FactoryBot.create(:user) }
    let!(:task1) { FactoryBot.create(:task, user_id: user1.id) }
    
    it 'コメントが空白' do
      @comment = Comment.new(user_id: user1.id, task_id: task1.id, content:"")
      @comment.valid?
      expect(@comment.valid?).to eq(false)
    end

    it 'ユーザーidが空白' do
      @comment = Comment.new(user_id: "", task_id: task1.id, content:"おじさん")
      @comment.valid?
      expect(@comment.valid?).to eq(false)
    end

    it 'タスクーidが空白' do
      @comment = Comment.new(user_id: user1.id, task_id: "", content:"おじさん")
      @comment.valid?
      expect(@comment.valid?).to eq(false)
    end
  end
end