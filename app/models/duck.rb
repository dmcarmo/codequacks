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
      { from: Date.parse(range[0].to_s), to: Date.parse(range[1].to_s) }
    end
  end

  def available?(start_time, end_time)
    bookings.each do |b|
      return false if (b.start_time..b.end_time).overlaps?(start_time.to_date..end_time.to_date)
    end
    return true
  end
end
