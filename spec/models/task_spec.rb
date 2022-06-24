require 'rails_helper'
describe 'タスクモデル機能', type: :model do

  describe 'バリデーションのテスト' do
    it 'バリデーションにひっかる' do
      task = Task.new(title: '', content: '失敗テスト')
      expect(task).not_to be_valid
    end

    it 'バリデーションにひっかかる' do
      # ここに内容を記載する
    end
    
    it 'バリデーションが通る' do
      # ここに内容を記載する
    end
  end



  
end
