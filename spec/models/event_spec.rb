require 'rails_helper'

RSpec.describe Event, type: :model do
  describe '#validation' do
    context '正常系' do
      it '全て有効' do
        event = create(:event)
        expect(event).to be_valid
        expect(event.errors).to be_empty
      end
    end
    context '異常系' do
      it 'titleが空欄' do
        event_without_title = build(:event, title: "")
        expect(event_without_title).to be_invalid
        expect(event_without_title.errors[:title]).to eq ["can't be blank"]
      end
    end
  end
end
