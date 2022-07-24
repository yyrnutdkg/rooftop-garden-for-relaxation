require 'rails_helper'

RSpec.describe Place, type: :model do
  describe '#validation' do
    context '正常系' do
      it '全て有効' do
        place = build(:place)
        expect(place).to be_valid
        expect(place.errors).to be_empty
      end
    end
    context '異常系' do
      it 'nameが空欄' do
        place_without_name = build(:place, name: "")
        expect(place_without_name).to be_invalid
        expect(place_without_name.errors[:name]).to eq ["can't be blank"]
      end
    end
  end
end
