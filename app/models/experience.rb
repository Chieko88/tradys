class Experience < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  # has_many :user, through: :bookings
  has_one_attached :photo


  # validations
  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :price, presence: true
  validates :duration, presence: true
end
