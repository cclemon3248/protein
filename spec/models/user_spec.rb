require 'rails_helper'
describe 'タスクモデル機能', type: :model do
  describe 'バリデーションのテスト' do
    it 'ユーザー名が空白の場合' do
      @user = User.new(name: "", email: "email@email.com", password: "s5mYmhCy")
      @user.valid?
      expect(@user.valid?).to eq(false)
    end

    it 'メールが空白の場合' do
      @user = User.new(name: "おばさん", email: "", password: "s5mYmhCy")
      @user.valid?
      expect(@user.valid?).to eq(false)
    end

    it 'パスワードが空白の場合' do
      @user = User.new(name: "おばさん", email: "email@email.com", password: "")
      @user.valid?
      expect(@user.valid?).to eq(false)
    end

    it '全部入力している場合' do
      @user = User.new(name: "おばさん", email: "email@email.com", password: "s5mYmhCy")
      @user.valid?
      expect(@user.valid?).not_to eq(false)
    end
  end
end