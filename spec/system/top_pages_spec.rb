require 'rails_helper'

RSpec.describe "TopPages", type: :system do
  describe 'Topページの表示' do
    context 'Topページへの遷移' do
      it 'topページが表示される' do
        visit root_path
        expect(page).to have_content('toppage')
      end
    end
  end
end
