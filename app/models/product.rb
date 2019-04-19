class Product < ApplicationRecord
  mount_uploader :picture, PhotoUploader
end
