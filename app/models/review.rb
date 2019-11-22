class Review < ApplicationRecord
  belongs_to :reservation
  belongs_to :user

  validates :rating, presence: true, numericality: { only_integer: true }
  validates :rating, inclusion: { in: (1..5).to_a }
end
