class Event < ApplicationRecord
  belongs_to :place

  validates :place_id, presence: true
  validates :title, presence: true
end
