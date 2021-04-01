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
    bookings.pluck(:start_date, :end_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end

  def available?(start_date, end_date)
    bookings.each do |b|
      return false if (b.start_date..b.end_date).overlaps?(start_date..end_date)
    end
    return true
  end
end
