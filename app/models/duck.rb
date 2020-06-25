class Duck < ApplicationRecord
  has_many :bookings
  has_one_attached :photo
  belongs_to :user
  has_many :reviews, through: :bookings
  validates :name, :description, :price, :photo, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
end
