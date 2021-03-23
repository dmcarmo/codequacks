class Duck < ApplicationRecord
  has_many :bookings
  has_one_attached :photo
  belongs_to :user
  has_many :reviews, through: :bookings
  validates :name, :description, :price, :photo, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }

  include PgSearch::Model
  pg_search_scope :global_search,
                  against: %i[name description],
                  using: {
                    tsearch: { prefix: true }
                  }

  def unavailable_dates
    bookings.pluck(:start_time, :end_time).map do |range|
      { from: range[0], to: range[1] }
    end
  end
end
