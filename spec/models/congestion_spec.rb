require 'rails_helper'

RSpec.describe Congestion, type: :model do
  describe '#validation' do
    context '正常系' do
      it '全て有効' do
        congestion = create(:congestion)
        expect(congestion).to be_valid
        expect(congestion.errors).to be_empty
      end
    end
    context '異常系' do
      it 'rateが空欄' do
        congestion_without_rate = build(:congestion, rate: "")
        expect(congestion_without_rate).to be_invalid
        expect(congestion_without_rate.errors[:rate]).to eq ["can't be blank"]
      end
    end
  end
end
