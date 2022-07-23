require 'rails_helper'

RSpec.describe Store, type: :model do
  describe '#validation' do
    context '正常系' do
      it '全て有効' do
        store = create(:store)
        expect(store).to be_valid
        expect(store.errors).to be_empty
      end
    end
    context '異常系' do
      it 'titleが空欄' do
        store_without_title = build(:store, title: "")
        expect(store_without_title).to be_invalid
        expect(store_without_title.errors[:title]).to eq ["can't be blank"]
      end
    end
  end
end
