require "email_validator"
class User < ApplicationRecord
  before_save { self.email = email.downcase }
  has_many :articles
  validates :username, presence: true,  uniqueness: { case_sensitive: false }, length: { in: 3..25 }
  validates :email, email: true, presence: true,  uniqueness: { case_sensitive: false }, length: { maximum: 105 }

  has_secure_password
end
