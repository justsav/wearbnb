class Review < ApplicationRecord
  belongs_to :reservation

  validates :rating, presence: true, numericality: { only_integer: true }
end
