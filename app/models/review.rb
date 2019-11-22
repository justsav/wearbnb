class Review < ApplicationRecord
  belongs_to :reservation
  belongs_to :user

  validates :rating, presence: true, numericality: { only_integer: true }
end
