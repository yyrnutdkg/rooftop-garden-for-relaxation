class Contact < ApplicationRecord
  validates :name, presence: true
  validates :content, presence: true
  #email validation
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255}, format: {with: VALID_EMAIL_REGEX}
end
