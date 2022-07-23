class Store < ApplicationRecord
  belongs_to :place

  enum store_type: { inside: 0, outside: 1 }

  validates :title, presence: true
end
