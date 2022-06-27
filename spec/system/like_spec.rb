require 'rails_helper'
RSpec.describe 'テスト', type: :system do
  describe 'いいね' do    
    before do
      user1 = FactoryBot.create(:user)
      task1 = FactoryBot.create(:task, user_id: user1.id)
    end
    it 'いいねをする' do
      visit new_user_session_path
      click_link "ゲストログイン"
      click_link "見る"
      find('.bi-heart').click
      like = Like.all[0].valid?
      expect(like).to eq(true)
    end
  end
end