class User < ApplicationRecord
  authenticates_with_sorcery!
  mount_uploader :icon, AvatarUploader

  has_many :place_users, dependent: :destroy
  has_many :bookmark_places, through: :place_users, source: :place

  has_many :post_users
  has_many :posts, through: :post_users

  enum user_role: { member: 0, admin: 1 }

  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
  validates :reset_password_token, uniqueness: true, allow_nil: true

  def own?(object)
    id == object.id
  end

  def own_post(post)
    posts << post
  end

  def delete_post(post)
    posts.destroy(post)
  end

  def bookmark(place)
    bookmark_places << place
  end

  def unbookmark(place)
    bookmark_places.destroy(place)
  end

  def bookmark?(place)
    bookmark_places.include?(place)
  end
end
