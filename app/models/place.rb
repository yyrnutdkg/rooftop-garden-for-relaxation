class Place < ApplicationRecord
  has_many :congestion
  validates :name, presence: true
end
