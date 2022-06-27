require 'rails_helper'
RSpec.describe 'テスト', type: :system do
  describe 'お気に入り' do    
    before do
      user1 = FactoryBot.create(:user)
      task1 = FactoryBot.create(:task, user_id: user1.id)
    end
    it 'お気に入りをする' do
      visit new_user_session_path
      click_link "ゲストログイン"
      click_link "見る"
      find('.bi-star').click
      favorite = Favorite.all[0].valid?
      expect(favorite).to eq(true)
    end
  end
end