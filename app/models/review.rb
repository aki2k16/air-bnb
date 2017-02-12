class Review < ApplicationRecord
  mount_uploader :image_url, IventImageUploader
end
