class Place < ApplicationRecord
  has_many :congestions
  has_many :events
  has_many :place_tags
  has_many :tags, through: :place_tags
  has_many :place_users, dependent: :destroy
  has_many :users, through: :place_users
  has_many :posts, dependent: :destroy
  has_many :stores

  validates :name, presence: true

  scope :place_name_contain, -> (word) { where('name LIKE ?', "%#{word}%")}
  scope :address_contain, -> (word) {where('address LIKE ?', "%#{word}%")}
  scope :by_tag, -> (tag_id) { joins(:place_tags).where(place_tags: {tag_id: tag_id}) }
  scope :by_business_hours, -> (business_hours) { where('end_time > ?', business_hours) }
  scope :by_current_position, ->(latitude, longitude) { select(:id, :name,:description, :fee, :start_time, :end_time, :access, :map_link, "ST_Distance('SRID=4326;POINT(#{longitude} #{latitude})', lonlat) as distance").order(:distance)}
  scope :limit_records, -> (number) { limit(number) }
end
