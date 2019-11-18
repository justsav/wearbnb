class ClothingItem < ApplicationRecord
  validates :category, presence: true
  validates :picture, presence: true
  validates :name, presence: true
  validates :price, presence: true, numericality: { only_integer: true }
end
