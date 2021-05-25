class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :offer
  validates :start_date, :end_date, presence: true
  # validates :start_date, not_in_past: true
  validates :end_date, date: { after_or_equal_to: :start_date }
end
