require 'rails_helper'
describe 'タスクモデル機能', type: :model do
  describe 'バリデーションのテスト' do
    before do
      user1 = FactoryBot.create(:user)
      task1 = FactoryBot.create(:task, user_id: user1.id)
    end
    it '商品名を絶対入力すること' do
      @task = Task.all[0]
      @task.name = nil
      @task.valid?
      expect(@task.valid?).to eq(false)
    end

    it 'コンビニ名を絶対入力すること' do
      @task = Task.all[0]
      @task.store = nil
      @task.valid?
      expect(@task.valid?).to eq(false)
    end

    it 'タンパク質を絶対入力すること' do
      @task = Task.all[0]
      @task.protein = nil
      @task.valid?
      expect(@task.valid?).to eq(false)
    end

    it 'カロリーを絶対入力すること' do
      @task = Task.all[0]
      @task.calorie = nil
      @task.valid?
      expect(@task.valid?).to eq(false)
    end

    it '画像を絶対入力すること' do
      @task = Task.all[0]
      @task.image = nil
      @task.valid?
      expect(@task.valid?).to eq(false)
    end
  end
end
