class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :experience

  # validations
  validates :start_date, presence: true
  enum status: [ :pending, :accepted, :rejected ]

  def pending?
    status == 'pending'
  end
end
