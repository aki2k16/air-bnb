class Room < ApplicationRecord
  has_many :reviews
  belongs_to :user
  has_many :reservations

  validates :price, :bed, :bedroom, :listing, :prefecture, :guest, :title, presence: true
end
