class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :genre
end
