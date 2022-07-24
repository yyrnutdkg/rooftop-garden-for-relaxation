class Place < ApplicationRecord
  has_many :congestions
  has_many :events
  has_many :place_tags
  has_many :tags, through: :place_tags
  has_many :stores

  validates :name, presence: true
end
