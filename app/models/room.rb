class Room < ApplicationRecord
  has_many :reviews
  belongs_to :user
  has_many :reservations

  # バリデーション
  validates :price, :bed, :bedroom, :listing, :prefecture, :guest, :title, presence: true

  #adressから緯度と経度を取得。
  geocoded_by :address   
  after_validation :geocode
end
