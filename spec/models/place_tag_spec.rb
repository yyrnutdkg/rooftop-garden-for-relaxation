require 'rails_helper'

RSpec.describe PlaceTag, type: :model do
  describe '#validation' do
    context '正常系' do
      it '全て有効' do
        place_tag = create(:place_tag)
        expect(place_tag).to be_valid
        expect(place_tag.errors).to be_empty
      end
    end
  end
end
