require 'rails_helper'

RSpec.describe "SearchFuncs", type: :system do
  let!(:place_name) {create(:place, name: 'placeテスト1')}
  describe '検索機能' do
    context '施設名検索' do
      it '検索結果が表示される' do
        visit root_path
        fill_in 'q[name]', with: '1'
        click_button '検索'
        expect(page).to have_content(place_name.name)
      end
    end
  end
end
