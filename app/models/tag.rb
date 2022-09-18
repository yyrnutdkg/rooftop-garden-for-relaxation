class Tag < ApplicationRecord
  has_many :place_tags
  has_many :tags, through: :place_tags

  validates :name, presence: true
end
