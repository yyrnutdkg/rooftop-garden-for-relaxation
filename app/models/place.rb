class Place < ApplicationRecord
  has_many :congestions
  has_many :events

  validates :name, presence: true
end
