class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  SPORT_TYPES = %w(Basketball Football Volleyball Ping-Pong Skiing Hiking Kanu Rackets Climbing Kayaking Spikeball SUP Handball Skate-boarding Skating Surfing)
  validates :offer_type, :name, :description, :address, :price, :sport_type, presence: true
  validates :description, length: { minimum: 10, message: "Description has to have at least 20 characters" }
  validates :offer_type, inclusion: { in: %w(Equipment Facility), message: "Please choose between 'Equipment' or 'Facility'." }
  validates :sport_type, inclusion: { in: SPORT_TYPES, message: "Please choose one from the list." }
  validates :price, length: { in: 1..100 }
  validates :price, numericality: { only_integer: true }
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
