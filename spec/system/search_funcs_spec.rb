require 'rails_helper'

RSpec.describe "SearchFuncs", type: :system do
  let!(:place_name) {create(:place, name: 'placeテスト1')}
  describe '検索機能' do
    let!(:place_tag) {create(:place, :with_tag, tag_name: '新宿')}


    context '施設名検索' do
      it '検索結果が表示される' do
        visit root_path
        fill_in 'q[name]', with: '1'
        click_button '検索'
        expect(page).to have_content(place_name.name)
      end
    end
    context 'タグ名検索' do
      it '検索結果が表示される' do
        visit search_detail_path
        within 'select[name="q[tag_id]"]' do
          select '新宿'
        end
        click_button '検索'
        expect(page).to have_content(place_tag.name)
      end
    end
  end
end
