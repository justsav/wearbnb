class ClothingItem < ApplicationRecord
  has_many :reservations
  validates :category, presence: true
  validates :picture, presence: true
  validates :name, presence: true
  validates :price, presence: true, numericality: { only_integer: true }
end
