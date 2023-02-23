class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :experience

  # validations
  validates :start_date, presence: true
  validates :number_of_people, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0}
end
