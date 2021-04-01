class Booking < ApplicationRecord
  belongs_to :duck
  belongs_to :user
  has_many :reviews

  validates :start_date, :end_date, presence: true, allow_blank: false
  validate :end_date_after_start_date

  def duration
    (end_date - start_date).to_i + 1
  end

  def total_cost
    (duration * duck.price).to_i
  end

  private

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    errors.add(:end_date, "must be after the start date") if end_date < start_date
  end
end
