require 'rails_helper'

RSpec.describe Notification, type: :model do
  describe '#validation' do
    context '正常系' do
      it '全て有効' do
        notification = build(:notification)
        expect(notification).to be_valid
        expect(notification.errors).to be_empty
      end
    end
    context '異常系' do
      it 'commentが空欄' do
        notification_without_comment = build(:notification, comment: "")
        expect(notification_without_comment).to be_invalid
        expect(notification_without_comment.errors[:comment]).to eq ["can't be blank"]
      end
    end
  end
end
