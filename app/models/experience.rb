class Experience < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_name,
    against: [ :name ],
    using: {
      tsearch: { prefix: true } #
  }

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
