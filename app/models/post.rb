class Post < ApplicationRecord
  has_many :post_users
  has_many :users, through: :post_users
  belongs_to :place

  enum post_type: {tweet: 0, description: 1}
end
