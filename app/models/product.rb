class Product < ApplicationRecord
  belongs_to :user
  has_many :checkouts
  has_one_attached :photo

  validates :item_name, uniqueness: true, presence: true
  validates :price, :description, presence: true
end
