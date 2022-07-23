class Place < ApplicationRecord
  has_many :congestions
  has_many :events
  has_many :stores

  validates :name, presence: true
end
