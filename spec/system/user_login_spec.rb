require 'rails_helper'

RSpec.describe "UserLogin", type: :system do
  let(:user) { create(:user) }

  context '通常ログイン機能' do
    it 'ログインに成功する' do
      visit login_path
      fill_in 'Email', with: user.email
      fill_in 'Password', with: 'password'
      click_button 'ログイン'
      expect(page).to have_content('ログインに成功しました。')
    end

    it 'ログインに失敗する' do
      visit login_path
      fill_in 'Email', with: user.email
      fill_in 'Password', with: 'password'
      click_button 'ログイン'
      expect(page).to have_content('ログインに成功しました')
    end

    it 'ログアウトに成功する' do
      visit login_path
      fill_in 'Email', with: user.email
      fill_in 'Password', with: 'password'
      click_button 'ログイン'
      click_link 'ログアウト'
      expect(page).to have_content('ログアウトに成功しました')
    end
  end
end
