class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :experience

  # validations
  validates :start_date, presence: true
end
