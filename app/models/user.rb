class User < ApplicationRecord
  has_many :posts
  has_many :comments

  PASSWORD_FORMAT = /\A
    (?=.*\d)           # Must contain a digit
    (?=.*[a-z])        # Must contain a lower case character
    (?=.*[A-Z])        # Must contain an upper case character
    (?=.*[[:^alnum:]]) # Must contain a symbol
  /x

  validates :email, :display_name, :password, presence: true
  validates :email, :display_name, uniqueness: true
  validates :display_name, :password, length: { in: 8..16 }
  validates :display_name, format: { with: /\A[a-zA-Z0-9]+\z/,
    message: "only allows letters" }
  validates :password, format: { with: PASSWORD_FORMAT }
end
