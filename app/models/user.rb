class User < ApplicationRecord
  validates :username, :email, :password, presence: true
  validates :username, :email, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, length: { minimum: 6 }
end
