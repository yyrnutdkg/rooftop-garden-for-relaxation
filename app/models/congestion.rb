class Congestion < ApplicationRecord
  belongs_to :place

  validates :place_id, presence: true
  validates :rate, presence: true
end
