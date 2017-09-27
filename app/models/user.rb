class User < ApplicationRecord
  before_save { self.email = email.downcase }
  has_many :microposts
  validates :name, presence: true, length: {maximum: 50}
  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255},
                    format: {with: EMAIL_REGEX},
                    uniqueness: {case_sensitive: false}
end
