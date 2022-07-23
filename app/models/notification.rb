class Notification < ApplicationRecord
  validates :comment, presence: true
end
