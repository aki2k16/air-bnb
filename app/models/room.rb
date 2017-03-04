class Room < ApplicationRecord
  has_many :reviews
  belongs_to :user
  belongs_to :reservation
end
