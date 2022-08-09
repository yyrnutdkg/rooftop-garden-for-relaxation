class Place < ApplicationRecord
  has_many :congestions
  has_many :events
  has_many :place_tags
  has_many :tags, through: :place_tags
  has_many :stores

  validates :name, presence: true

  scope :place_name_contain, ->(word) { where('name LIKE ?', "%#{word}%") }
  scope :by_tag, ->(tag_id) { joins(:place_tags).where(place_tags: {tag_id: tag_id}) }
  scope :by_business_hours, -> (business_hours) { where('end_time > ?', business_hours) }
end
