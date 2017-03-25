class Review < ApplicationRecord
  belongs_to :user
  belongs_to :room

  validates :body, presence: true
end
