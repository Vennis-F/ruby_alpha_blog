require "email_validator"
class User < ApplicationRecord
  validates :username, presence: true,  uniqueness: { case_sensitive: false }, length: { in: 3..25 }
  validates :email, email: true, presence: true,  uniqueness: { case_sensitive: false }, length: { maximum: 105 }
end
