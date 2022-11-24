class Comment < ApplicationRecord
  validates :body, presence: true
  validates :body, length: { minimum: 10 }

  belongs_to :post
  belongs_to :user
end
