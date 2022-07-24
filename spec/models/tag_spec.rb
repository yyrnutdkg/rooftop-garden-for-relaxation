require 'rails_helper'

RSpec.describe Tag, type: :model do
  describe '#validation' do
    context '正常系' do
      it '全て有効' do
        tag = create(:tag)
        expect(tag).to be_valid
        expect(tag.errors).to be_empty
      end
    end
    context '異常系' do
      it 'nameが空欄' do
        tag_without_name = build(:tag, name: "")
        expect(tag_without_name).to be_invalid
        expect(tag_without_name.errors[:name]).to eq ["can't be blank"]
      end
    end
  end
end
