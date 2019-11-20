class ClothingItem < ApplicationRecord
  has_many :reservations
  has_many :users,
           through: :reservations

  validates :category, presence: true
  validates :picture, presence: true
  validates :name, presence: true
  validates :price, presence: true, numericality: { only_integer: true }
end
