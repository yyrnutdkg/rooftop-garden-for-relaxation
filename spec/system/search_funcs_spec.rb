require 'rails_helper'

RSpec.describe "SearchFuncs", type: :system do
  let!(:place_name) {create(:place, name: 'placeテスト1')}
  describe '検索機能' do
    let!(:place_tag) {create(:place, :with_tag, tag_name: '新宿')}
    let!(:open_place){create(:place, start_time:'10:00', end_time: '20:00')}
    let!(:shibuya_place) {create(:place, name: '渋谷テスト', lonlat: 'point(139.70078034192716 35.6591592767778)')}


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
    context '時間を使った検索' do
      it '検索結果が表示される' do
        visit search_detail_path
        fill_in 'q[business_hours]', with: '18:00'
        click_button '検索'
        expect(page).to have_content(open_place.name)
      end
    end
    context '現在地検索' do
      it '検索結果が表示される' do
        visit root_path
        click_button '現在地を取得する'
        sleep 5
        click_button '現在地から検索する'
        expect(page).to have_content(shibuya_place.name)
      end
    end
  end
end
