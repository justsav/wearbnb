class Reservation < ApplicationRecord
  belongs_to :clothingitem
  belongs_to :user

  validates :begin_date, presence: true
  validates :end_date, presence: true
end
