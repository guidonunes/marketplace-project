class Product < ApplicationRecord
  belongs_to :user

  validates :item_name, uniqueness: true, presence: true
  validates :image, :description, :price, presence: true
end
