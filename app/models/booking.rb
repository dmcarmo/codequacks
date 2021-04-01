class Booking < ApplicationRecord
  belongs_to :duck
  belongs_to :user
  has_many :reviews

  validates :start_time, :end_time, presence: true, allow_blank: false
  validate :end_time_after_start_time

  def duration
    (((end_time - start_time) / 86_400) + 1).to_i
  end

  def total_cost
    (duration * duck.price).to_i
  end

  private

  def end_time_after_start_time
    return if end_time.blank? || start_time.blank?

    errors.add(:end_time, "must be after the start date") if end_time < start_time
  end
end
