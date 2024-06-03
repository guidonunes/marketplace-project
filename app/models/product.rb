class Product < ApplicationRecord
  belongs_to :user
  has_many :checkouts

  validates :item_name, uniqueness: true, presence: true
end
