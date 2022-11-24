class Post < ApplicationRecord
  validates :link, presence: true

  belongs_to :user
  has_many :comments
end
